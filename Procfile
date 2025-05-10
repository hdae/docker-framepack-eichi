demo_gradio: python demo_gradio.py --port 7860 --server 0.0.0.0
demo_gradio_f1: python demo_gradio_f1.py --port 7860 --server 0.0.0.0
endframe_ichi: python endframe_ichi.py --lang ${LANG:-ja} --port 7860 --server 0.0.0.0
endframe_ichi_f1: python endframe_ichi_f1.py --lang ${LANG:-ja} --port 7860 --server 0.0.0.0
oneframe_ichi: python oneframe_ichi.py --lang ${LANG:-ja} --port 7870 --server 0.0.0.0
notebook: python -m jupyter lab --no-browser --port=8888 --ip=0.0.0.0 --FileContentsManager.delete_to_trash=False --ServerApp.terminado_settings='{"shell_command":["/bin/bash"]}' --ServerApp.token=$JUPYTER_PASSWORD --ServerApp.allow_origin=* --ServerApp.preferred_dir=/workspace &>>/jupyter.log
