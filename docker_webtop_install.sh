docker run -d \
  --name=webtop \
  --security-opt seccomp=unconfined  \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=America/Toronto \
  -e SUBFOLDER=/  \
  -e KEYBOARD=en-us-qwerty  \
  -p 3024:3000 \
  -v /path/to/data:/config \
  -v /var/run/docker.sock:/var/run/docker.sock  \
  --device /dev/dri:/dev/dri  \
  --shm-size="1gb"  \ # Adjust this based on your RPI model. If you have 4 and 400 I recomend doing 1.5-2GB, otherwise I reccomend 1GB
  --restart unless-stopped \
  lscr.io/linuxserver/webtop