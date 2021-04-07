# Torrserver docker

[TorrServer latest](https://github.com/YouROK/TorrServer/releases) amd64.

```bash
docker run -d \
  --name torrserver \
  -v ./torrserver_db:/torrserver \
  --restart unless-stopped \
  -p 8090:8090 \
  cretm/torrserver
```

- `./torrserver_db` — local dir.
- `/torrserver/TorrServer` — bin.
- `/torrserver/config.db` — config.
