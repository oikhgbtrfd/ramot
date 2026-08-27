# mtg on Railway (Telegram MTProto proxy with FakeTLS)
Lightweight single-process mtg v2 — no nginx/php, fits free tier limits.

## Deploy
1. Push this repo to your GitHub.
2. Railway -> New Project -> Deploy from GitHub repo -> select this repo.
3. Settings -> Networking -> TCP Proxy: external port anything (e.g. 52157) -> internal port 443.
4. Use this client link:
https://t.me/proxy?server=altaria.proxy.rlwy.net&port=52157&secret=eed2afa90da657a9976e83bafbd4939daa636c6f7564666c6172652e636f6d

## Notes
- bind-to is 0.0.0.0:443 to match the TCP Proxy internal port.
- To change secret/domain: edit secret in config.toml (format ee<hex32><hex(domain)>), then redeploy.
- Sponsor TAG: register the endpoint in @MTProxybot; tags are handled by Telegram infra, not by mtg config.
