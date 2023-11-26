#!/bin/sh

#in_dir = /usr/local/in
#out_dir = /usr/local/out
BUILD_DIR="/usr/build"

for file in /usr/local/in/*.ttf; do
$BUILD_DIR/woff2/woff2_compress $file; done

for file in /usr/local/in/*.otf; do
$BUILD_DIR/woff2/woff2_compress $file; done

mv /usr/local/in/*.woff2 /usr/local/out/
