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

## Pre-built packages:
GitHub Actions automatically builds all base images every commit, and they are attached to this repo. Our manually built packages are not attached to this repo and you'll have to look at Deblok-Workshop's Packages tab to see them.
