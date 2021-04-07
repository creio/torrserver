# Torrserver docker

[TorrServer latest](https://github.com/YouROK/TorrServer/releases) amd64.

```bash
docker run -d \
  --name torrserver \
  -p 8090:8090 \
  -v ./torrserver_db:/torrserver \
  --restart unless-stopped \
  cretm/torrserver
```

- `./torrserver_db` — local dir.
- `/torrserver/TorrServer` — bin.
- `/torrserver/config.db` — config.

Log.

```bash
docker logs torrserver
```
