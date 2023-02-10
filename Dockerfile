FROM ubuntu
CMD ["bash"]
LABEL An=Make by MonPham
RUN /bin/sh -c apt update && apt install -y wget tar  ca-certificates
RUN /bin/sh -c useradd -ms /bin/bash meson &&     usermod -aG sudo meson # buildkit
RUN /bin/sh -c echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers # buildkit
USER meson
WORKDIR /meson
COPY install.sh install.sh # buildkit
# RUN wget 'https://staticassets.meson.network/public/meson_cdn/v3.1.19/meson_cdn-linux-amd64.tar.gz' && tar -zxf meson_cdn-linux-amd64.tar.gz && rm -f meson_cdn-linux-amd64.tar.gz 
# RUN cp -r ./meson_cdn-linux-amd64/* . && rm -rf meson_cdn-linux-amd64
ARG TOKEN
# COPY install.sh install.sh
# COPY start.sh start.sh
# RUN bash install.sh
RUN /bin/sh -c sudo chmod 777 ./install.sh # buildkit
CMD ["/bin/sh" "-c" "./install.sh ; sleep infinity"]
# ./service start meson_cdn
