FROM alpine:latest

ARG BUILD_DIR="/usr/build"

RUN mkdir -p $BUILD_DIR && \
    cd $BUILD_DIR && \
    apk add --no-cache alpine-sdk && \
    git clone --recursive https://github.com/google/woff2.git

RUN cd $BUILD_DIR/woff2 && \
    make clean all

COPY woff2-all.sh /usr/bin/woff2-all.sh

#CMD ["/usr/bin/woff2-all.sh"]