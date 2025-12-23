# igfix (Instagram Reels Ads Fix for Linux)

`igfix` normalizes MP4 exports (especially from DaVinci Resolve on Linux) so Instagram/Meta Ads Manager accepts them for boosting Reels.

It targets common rejection causes:
- H.264 **High Profile** ➜ forces **Baseline**
- **B-frames** present ➜ forces **0 B-frames**
- Variable/odd encoding ➜ forces **CFR 30fps**, GOP=30
- MP4 not optimized for upload ➜ `+faststart`
- Tags Rec.709 / bt709

## Requirements
- `ffmpeg` (includes `ffprobe`)
- KDE is optional (only needed for the “Open With” integration)

## Install
```bash
git clone https://github.com/<you>/igfix.git
cd igfix
./install.sh

