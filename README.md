# MY_PYWWS

Docker image based on Alpine Linux and PYWWS (18.10.1)- python software for USB Wireless Weather Stations

[Docker Hub](https://hub.docker.com/r/henkez/my_pywws/)

Find out more about PYWWS here: https://github.com/jim-easterbrook/pywws

Use `--privileged` to give access to USB devices

docker run -d \\\
--restart unless-stopped \\\
--privileged \\\
--name=my_pywws \\\
-e PGID=1000 -e PUID=1000 \\\
-e TZ=Europe/London \\\
-v ~/my_pywws/data:/var/data \\\
henkez/my_pywws:latest pywws-livelog /var/data

Ensure weather.ini is up-to-date (main cause of issues for me between PYWWS versions)