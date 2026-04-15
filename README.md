# MammothSKULL (PointBreak)

Camera-tracked jersey overlay. Uses [MediaPipe Pose](https://google.github.io/mediapipe/solutions/pose.html) (loaded from CDN) and your **Senior Jersey** image assets.

## Before you push to GitHub

1. Copy your entire **`Senior Jersey`** folder into this directory **next to** `PointBreak.html` (same level as `index.html`), so you have:
   - `Senior Jersey/Background.png`
   - `Senior Jersey/AwayJersey/` … away sprites  
   (This matches the paths in `PointBreak.html`.)

2. Optionally add `blue-overlay.png` in this folder for the blue-detect overlay graphic.

3. **Do not commit secrets** — this project has none; assets are your own art.

## Push to your repo: [WadeSalmon/FanSync](https://github.com/WadeSalmon/FanSync)

The remote is empty; push from your Mac (Terminal or Cursor’s terminal) — this environment may not be allowed to write `.git` on your Desktop.

In **`MammothSKULL`**:

```bash
cd ~/Desktop/MammothSKULL
git init
git add .
git commit -m "Initial commit: MammothSKULL PointBreak"
git branch -M main
git remote add origin https://github.com/WadeSalmon/FanSync.git
git push -u origin main
```

If `origin` already exists: `git remote set-url origin https://github.com/WadeSalmon/FanSync.git` then `git push -u origin main`.

GitHub will prompt for login: use a [Personal Access Token](https://github.com/settings/tokens) as the password over HTTPS, or switch the remote to SSH (`git@github.com:WadeSalmon/FanSync.git`) if you use SSH keys.

## GitHub Pages

1. Repo **Settings → Pages → Build and deployment → Source**: **Deploy from a branch**, branch **main**, folder **`/ (root)`**, Save.

2. Site URL (after the first successful deploy):

   **https://wadesalmon.github.io/FanSync/**

   `index.html` redirects to `PointBreak.html`.

## Camera and HTTPS

GitHub Pages uses **HTTPS**, which browsers require for camera access (except `localhost`). The first visit may ask for camera permission.

## Local preview (optional)

From this folder:

```bash
python3 -m http.server 8080
```

Open `http://localhost:8080/PointBreak.html`.

If you still keep `Senior Jersey` only on your Desktop *next to* this folder, copy or symlink it **into** this folder so paths resolve, or temporarily change the paths in `PointBreak.html` back to `../Senior Jersey/`.
