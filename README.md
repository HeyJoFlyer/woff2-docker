# woff2-docker

This project allows you to create a docker container which automatically compresses all fonts in a directory to woff2 and copies all compressed fonts to a second directory. This is very useful webhosting, where you want your files as small as possible for less server usage and faster load times.

## Usage

### Building

´´´bash
git clone https://github.com/HeyJoFlyer/woff2-docker.git
cd brotli-docker
docker build -t brotli-docker .
´´´

### Starting Container
Before starting the container you need to have two directories(you can change the path in the ´docker run´ command):
* One input folder with the fonts that need to be compressed (internal /usr/local/in)
* One output folder where the compressed fonts are going to be saved to (internal /usr/local/out)

´´´bash
docker run -it -v $(pwd)/in:/usr/local/in -v $(pwd)/out:/usr/local/out brotli-docker /usr/bin/woff2-all.sh
´´´

## Licenses

This project is licensed under the **MIT License**
[woff2 by google](https://github.com/google/woff2) is licensed under the **MIT License**