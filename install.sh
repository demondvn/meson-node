wget 'https://staticassets.meson.network/public/meson_cdn/v3.1.19/meson_cdn-linux-amd64.tar.gz' && \
tar -zxf meson_cdn-linux-amd64.tar.gz && rm -f meson_cdn-linux-amd64.tar.gz 
# cp -r ./meson_cdn-linux-amd64/* . && rm -rf meson_cdn-linux-amd64
cd meson_cdn-* && ls 
# sudo chmod +x ./service && sudo chmod +x ./meson_cdn
 mkdir /etc/init/ &&  touch /etc/init/meson_cdn.conf

#  ./service remove meson_cdn 
#  ./service install meson_cdn
#  ./service status meson_cdn 
# CACHE_SIZE=30
# TOKEN=bedkeoprilzaxgor3c32b24959d4a4c8
# PORT=443
./meson_cdn config set --token=$TOKEN --https_port=$PORT --cache.size=$CACHE_SIZE
./meson_cdn
#  ./service restart meson_cdn 
#  ./service status meson_cdn  
#  ./meson_cdn log 
