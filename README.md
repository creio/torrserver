# Torrserver docker alpine

Version 

[TorrServer latest](https://github.com/YouROK/TorrServer/releases) amd64.

```bash
mkdir torrserver_db

docker run -d \
  --name torrserver \
  -p 8090:8090 \
  -v $PWD/torrserver_db:/torrserver/db \
  --restart unless-stopped \
  ghcr.io/creio/torrserver
```

- `torrserver_db` — local dir.
- `torrserver_db/config.db` — config.

Log.

```bash
docker logs torrserver
```
