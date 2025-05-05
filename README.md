# FramePack + Eichi on Docker / Runpod

[このテンプレートをRunpodで実行する](https://runpod.io/console/deploy?template=ep11yd7v73&ref=oxrbnozc)

FramePackをRunpodで簡単に動かすことができるやつ。

## ビルド方法

普通にビルドして良い感じにタグつけてDockerHubに投げればOK

```
docker build . -t "hdae/framepack:$(date +%F)"
```

---

以下はRunpodに記載しているREADMEのコピー

# FramePack-Eichi-F1

## Usage

1. Start a pod using this template.
2. Wait for it to become ready. This usually takes about 4-6 minutes.
3. Connect to port 7860.
4. Enjoy!

## Changing Variants

To use a different variant, replace the `Container Start Command` field with one of the following commands:

- Vanilla: `python demo_gradio.py --port 7860 --server 0.0.0.0`
- Eichi: `python endframe_ichi.py --port 7860 --server 0.0.0.0`
- Vanilla F1: `python demo_gradio_f1.py --port 7860 --server 0.0.0.0`
- Eichi F1: `python endframe_ichi_f1.py --port 7860 --server 0.0.0.0`

## Changing Language

The Eichi version supports language switching. Use the `--lang` option followed by the language code:

- Eichi
  - English: `python endframe_ichi.py --lang en --port 7860 --server 0.0.0.0`
  - Traditional Chinese: `python endframe_ichi.py --lang zh-tw --port 7860 --server 0.0.0.0`
  - Japanese (Default): `python endframe_ichi.py --lang ja --port 7860 --server 0.0.0.0`
- Eichi F1
  - English: `python endframe_ichi_f1.py --lang en --port 7860 --server 0.0.0.0`
  - Traditional Chinese: `python endframe_ichi_f1.py --lang zh-tw --port 7860 --server 0.0.0.0`
  - Japanese (Default): `python endframe_ichi_f1.py --lang ja --port 7860 --server 0.0.0.0`

## Acknowledgements

This project utilizes and is grateful for the following open-source projects:

- [lllyasviel/FramePack](https://github.com/lllyasviel/FramePack)
- [git-ai-code/FramePack-eichi](https://github.com/git-ai-code/FramePack-eichi)
