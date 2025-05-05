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

1. start pod with this template.
2. wait until ready, about 4-6 minute.
3. connect to port 7860.
4. enjoy!

## Change variant

Reaplace `Container Start Command` field with this command.

- Vanilla: `python demo_gradio.py --port 7860 --server 0.0.0.0`
- Eichi: `python endframe_ichi.py --port 7860 --server 0.0.0.0`
- Vanilla F1: `python demo_gradio_f1.py --port 7860 --server 0.0.0.0`
- Eichi F1: `python endframe_ichi_f1.py --port 7860 --server 0.0.0.0`
