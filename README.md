# MY_PYWWS

![workflow](https://github.com/henkez73/my_pywws/actions/workflows/publish-docker-image.yaml/badge.svg)

Docker image based on Alpine Linux and PYWWS- python software for USB Wireless Weather Stations

[Docker Hub](https://hub.docker.com/r/henkez/my_pywws/)

Find out more about PYWWS here: <https://github.com/jim-easterbrook/pywws>

Use `--privileged` to give access to USB devices

## Docker

```shell
docker run -d \
--restart unless-stopped \
--privileged \
--name=my_pywws \
-e PGID=1000 -e PUID=1000 \
-e TZ=Europe/London \
-v ~/my_pywws/data:/var/data \
henkez/my_pywws:latest
```

## Docker Compose

```yaml
---
version: "3"
services:
  pywws:
    image: henkez/my_pywws:latest
    container_name: my_pywws
    privileged: true
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/London
    volumes:
      - ./data:/var/data
    restart: unless-stopped
```

Ensure weather.ini is up-to-date (main cause of issues for me between PYWWS versions)
