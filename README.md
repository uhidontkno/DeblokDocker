# DeblokDocker
Docker images for NewDeblok. 
* Base images include just Xorg WM and xterm, nothing special.

## Building
I find that using `build.sh` makes this process easier because of less typing needed:
* `build.sh [image]` if there is no image provided, all base images will be built.

## Starting
### Easy start:
* `run.sh [image]` runs the image and by default listens on :3000.
### Custom start:
```bash
sudo docker run -p [port]:6080 deblok-[image]
```
