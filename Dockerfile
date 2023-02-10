FROM ubuntu
RUN apt update && apt install -y wget tar
WORKDIR /meson
RUN wget 'https://staticassets.meson.network/public/meson_cdn/v3.1.19/meson_cdn-linux-amd64.tar.gz' && tar -zxf meson_cdn-linux-amd64.tar.gz && rm -f meson_cdn-linux-amd64.tar.gz && cd ./meson_cdn-linux-amd64 && sudo ./service install meson_cdn
ENTRYPOINT ['./meson_cdn','config set','--https_port=443']
#,'--cache.size=30','--token=bedkeoprilzaxgor3c32b24959d4a4c8 ','--https_port=443'
