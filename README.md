# igfix

Fix Instagram Reels Ads rejection for Linux / DaVinci Resolve exports.

`igfix` is a small utility that normalizes MP4 videos so they comply with
Instagram / Meta Ads technical requirements, allowing Reels to be promoted
without errors.

---

## The problem

On Linux, videos exported from DaVinci Resolve often:

- Play correctly on Instagram
- Appear to be valid 9:16 (1080×1920)
- Upload without issues

…but **cannot be boosted as ads**.

Instagram shows errors such as:
- “This reel can’t be boosted”
- “Reels must have a fullscreen (9:16) aspect ratio”
- Ads Manager silently rejects the video

This happens because **Meta Ads applies stricter codec and metadata validation**
than regular Instagram playback, especially for Linux exports.

---

## What igfix does

`igfix` rewrites the video stream to match Instagram Ads requirements:

- Forces **H.264 Baseline profile**
- Removes **B-frames**
- Enforces **constant 30 FPS**
- Sets **GOP = 30**
- Uses **yuv420p**
- Applies **Rec.709 / bt709** color tags
- Optimizes MP4 for streaming (`faststart`)
- Preserves audio when present (AAC 48 kHz)

The resulting file is accepted by Instagram for promotion.

---

## Requirements

- Linux
- `ffmpeg` (includes `ffprobe`)
- Optional: KDE Plasma (for Dolphin integration)

---

## Installation

```bash
git clone https://github.com/juanchi/igfix.git
cd igfix
./install.sh

