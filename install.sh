wget 'https://staticassets.meson.network/public/meson_cdn/v3.1.19/meson_cdn-linux-amd64.tar.gz' && \
tar -zxf meson_cdn-linux-amd64.tar.gz && rm -f meson_cdn-linux-amd64.tar.gz 
# cp -r ./meson_cdn-linux-amd64/* . && rm -rf meson_cdn-linux-amd64
cd meson_cdn-*
# sudo chmod +x ./service && sudo chmod +x ./meson_cdn
sudo mkdir /etc/init/ && sudo touch /etc/init/meson_cdn.conf

sudo ./service remove meson_cdn 
sudo ./service install meson_cdn
sudo ./service status meson_cdn 

sudo ./meson_cdn config set --token=$TOKEN --https_port=443 --cache.size=30

sudo ./service restart meson_cdn 
sudo ./service status meson_cdn  
sudo ./meson_cdn log 
