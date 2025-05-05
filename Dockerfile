FROM pytorch/pytorch:2.6.0-cuda12.4-cudnn9-devel AS stage

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /workspace

RUN : Install dependencies \
    && apt-get update \
    && apt-get install git -y \
    && git clone --depth=1 https://github.com/lllyasviel/FramePack /tmp/FramePack \
    && git clone --depth=1 https://github.com/git-ai-code/FramePack-eichi /tmp/eichi \
    && mv /tmp/FramePack/* . \
    && cp -r /tmp/eichi/webui/* . \
    && python -m pip install --no-cache-dir torchvision xformers flash-attn

FROM pytorch/pytorch:2.6.0-cuda12.4-cudnn9-runtime AS runtime

ARG UID=1000
EXPOSE 7860

RUN adduser \
    --disabled-password \
    --gecos "" \
    --home "/workspace" \
    --shell "/sbin/nologin" \
    --no-create-home \
    --uid "${UID}" \
    appuser

COPY --from=stage /opt/conda/lib/python3.11/site-packages /opt/conda/lib/python3.11/site-packages
COPY --from=stage --chown=${UID} /workspace /.workspace

RUN : Install dependencies \
    && apt-get update \
    && apt-get install gosu rsync libgl1 libglib2.0-0 libgoogle-perftools-dev -y \
    && rm -rf /var/lib/apt/lists/* \
    && python -m pip install --no-cache-dir -r /.workspace/requirements.txt \
    && python -m pip install --no-cache-dir --upgrade gradio

COPY ./entrypoint.sh /

# Change High-VRAM threshold.
# RUN sed -E -i 's,high_vram = free_mem_gb > [0-9]+,high_vram = free_mem_gb > 60,' /.workspace/*.py

ENTRYPOINT [ "/entrypoint.sh" ]
CMD ["python", "endframe_ichi.py", "--port", "7860", "--server", "0.0.0.0"]
