FROM ubuntu
RUN apt update && apt install -y wget tar
WORKDIR /meson
RUN wget 'https://staticassets.meson.network/public/meson_cdn/v3.1.19/meson_cdn-linux-amd64.tar.gz' && tar -zxf meson_cdn-linux-amd64.tar.gz && rm -f meson_cdn-linux-amd64.tar.gz 
RUN cp -r ./meson_cdn-linux-amd64/* . && rm -rf meson_cdn-linux-amd64
ARG TOKEN
COPY *.sh .
RUN bash install.sh
CMD bash start.sh
# ./service start meson_cdn
