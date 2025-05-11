# FramePack + Eichi on Docker / Runpod

[Deploy to RunPod](https://runpod.io/console/deploy?template=ep11yd7v73&ref=oxrbnozc)

FramePack EichiをRunpodで簡単に動かすことができるやつ。

## ビルド方法

普通にビルドして良い感じにタグつけてDockerHubに投げればOK

```
tag="$(date +%F)"
docker build . -f Dockerfile.runpod -t "hdae/framepack-eichi-runpod:${tag}"
docker push "hdae/framepack-eichi-runpod:${tag}"
```

---

以下はRunpodに記載しているREADMEのコピー

# FramePack Eichi F1 (template by [hdae](https://github.com/hdae))

起動が少し速く、NVIDIA Blackwellにも対応しています。

- Tested on `B200`, `RTX 5090`, `A100`, `A40`
- Links
  - [GitHub](https://github.com/hdae/docker-framepack-eichi)
  - [Report Issues](https://github.com/hdae/docker-framepack-eichi/issues)
- Current version
  - FramePack: c5d375661a2557383f0b8da9d11d14c23b0c4eaf
  - FramePack Eichi: 1cb362fbda71500f550b04698023671550380090
  - FramePack Loop: 0acc1de686340b964c2ea2feee0638b563cd253f

## Usage

1. このテンプレートを使ってPodを起動します。
2. Podが準備完了になるまで待ちます。通常、1分ほどかかります。
3. モデルがダウンロードされるのを待ちます。
   - 40GBあるので、結構時間がかかります。
   - かかる時間はノードやインスタンスタイプによって大きく変動します。
4. ポート7860にアクセスします。
5. 動画生成をお楽しみください！

## バリアントの変更

`Container Start Command` に、以下のように書くことで変更できます。

- demo_gradio
  - `honcho start notebook demo_gradio`
- demo_gradio_f1
  - `honcho start notebook demo_gradio_f1`
- endframe_ichi
  - `honcho start notebook endframe_ichi`
- endframe_ichi_f1
  - `honcho start notebook endframe_ichi_f1`
- oneframe_ichi
  - `honcho start notebook oneframe_ichi`
- demo_gradio_loop
  - `honcho start notebook demo_gradio_loop`
- demo_gradio_video2loop
  - `honcho start notebook demo_gradio_video2loop`

## 言語変更

Eichi版は英語/日本語/中国語(繁体字)に対応しています。\
デフォルトは日本語ですが、言語を変更したい場合は `Public Environment Variables`
から `LANG` を `en` または `zh-tw` に設定することで変更できます。

## Acknowledgements

This project utilizes and is grateful for the following open-source projects:

- [lllyasviel/FramePack](https://github.com/lllyasviel/FramePack)
- [git-ai-code/FramePack-eichi](https://github.com/git-ai-code/FramePack-eichi)
- [red-polo/FramePackLoop](https://github.com/red-polo/FramePackLoop)

Here is the English translation of the provided README:

# English version (Translate by gemini)

It can boot a bit faster, and it supports NVIDIA Blackwell.

## Usage

1. Launch a pod using this template.
2. Wait for it to become ready. This usually takes about 1 minute.
3. Wait for the model to download.
   - It's 40GB, so it will take quite some time.
   - The time required varies greatly depending on the node and instance type.
4. Access port 7860.
5. Enjoy generating videos!

## Changing Variants

You can change the variant by writing it in the `Container Start Command` like
this:

- demo_gradio
  - `honcho start notebook demo_gradio`
- demo_gradio_f1
  - `honcho start notebook demo_gradio_f1`
- endframe_ichi
  - `honcho start notebook endframe_ichi`
- endframe_ichi_f1
  - `honcho start notebook endframe_ichi_f1`
- oneframe_ichi
  - `honcho start notebook oneframe_ichi`
- demo_gradio_loop
  - `honcho start notebook demo_gradio_loop`
- demo_gradio_video2loop
  - `honcho start notebook demo_gradio_video2loop`

## Changing Language

The Eichi version supports English, Japanese, and Traditional Chinese.\
The default language is Japanese.

If you want to change the language, you can set the `LANG` environment variable
to `en` or `zh-tw` in **Public Environment Variables**.

## Acknowledgements

This project utilizes and is grateful for the following open-source projects:

- [lllyasviel/FramePack](https://github.com/lllyasviel/FramePack)
- [git-ai-code/FramePack-eichi](https://github.com/git-ai-code/FramePack-eichi)
- [red-polo/FramePackLoop](https://github.com/red-polo/FramePackLoop)
