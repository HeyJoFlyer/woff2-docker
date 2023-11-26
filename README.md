# woff2-docker
This project allows you to create a docker container which automatically compresses all fonts in a directory to woff2 and copies all compressed fonts to a second directory. This is very useful webhosting, where you want your files as small as possible for less server usage and faster load times.

## Usage

### Building

´´´bash
git clone https://github.com/HeyJoFlyer/woff2-docker.git
cd brotli-docker
docker build -t <add-custom-tag-for-image> .
´´´

### Starting Container
Before starting the container you need to have two directories:
* One input folder with the files that need to be compressed (internal /usr/local/in)
* An output folder where the files are going to be compressed to (internal /usr/local/out)

´´´bash
docker   

## Licenses



This project is licensed under the **AGPLv3.0 License**
[woff2 by google](https://github.com/google/woff2) is licensed under **the MIT License**