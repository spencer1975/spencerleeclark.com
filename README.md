# spencerleeclark.com

Static landing page for Spencer Clark's projects, served by Caddy on Railway.

- `public/` — the site. `index.html` is the landing page; each project gets a folder.
- `public/midjourney-viewer/` — promo page for the Obsidian plugin. **Do not edit here**:
  the source is `docs/` in the `obsidian-midjourney-viewer` repo. Run
  `tools/sync-midjourney-viewer.sh` to pull the latest copy.
- `Caddyfile` / `Dockerfile` — static file server (Railway auto-detects the Dockerfile). Apex and `*.up.railway.app`
  hosts redirect to `www.spencerleeclark.com`.

## Deploy

```
railway up          # from this folder, after `railway login` and `railway link`
```

Local preview:

```
docker build -t spencerweb . && docker run --rm -p 8080:8080 spencerweb
```
