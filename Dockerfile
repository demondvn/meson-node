FROM ubuntu
RUN apt update && apt install -y wget tar
WORKDIR /meson
RUN wget 'https://staticassets.meson.network/public/meson_cdn/v3.1.19/meson_cdn-linux-amd64.tar.gz' && tar -zxf meson_cdn-linux-amd64.tar.gz && rm -f meson_cdn-linux-amd64.tar.gz 
RUN cp -r ./meson_cdn-linux-amd64/* . && rm -rf meson_cdn-linux-amd64
RUN chmod 777 ./service && chmod 777 ./meson_cdn

ARG TOKEN
RUN ./meson_cdn config set --token=$TOKEN --https_port=443 --cache.size=30
RUN ./service install meson_cdn
ENTRYPOINT ['./service','start','meson_cdn']
# ./service start meson_cdn
