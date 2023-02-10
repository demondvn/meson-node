chmod +x ./service && chmod +x ./meson_cdn
mkdir /etc/init/ && touch /etc/init/meson_cdn.conf
./meson_cdn config set --token=$TOKEN --https_port=443 --cache.size=30
./service remove meson_cdn 
./service install meson_cdn
