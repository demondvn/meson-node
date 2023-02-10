FROM ubuntu
CMD ["bash"]
RUN apt update && apt install -y wget tar  ca-certificates
RUN useradd -ms /bin/bash meson &&     usermod -aG sudo meson # buildkit
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers # buildkit
USER meson
WORKDIR /meson
COPY install.sh install.sh
# RUN wget 'https://staticassets.meson.network/public/meson_cdn/v3.1.19/meson_cdn-linux-amd64.tar.gz' && tar -zxf meson_cdn-linux-amd64.tar.gz && rm -f meson_cdn-linux-amd64.tar.gz 
# RUN cp -r ./meson_cdn-linux-amd64/* . && rm -rf meson_cdn-linux-amd64
ARG TOKEN
RUN chmod 777 ./install.sh # buildkit
CMD ["/bin/sh" "-c" "./install.sh ; sleep infinity"]
# ./service start meson_cdn
