# meson-node

build base on https://docs.meson.network/nodes/run-meson-nodes.html

    docker build . -t meson
    
    docker run -d --name meson -v /mnt/blockstore/meson:/meson/meson_cdn-linux-amd64/m_cache \
    -e TOKEN=bedkeoprilzaxgor3c32b24959d4a4c8 -e PORT=4433 -e CACHE_SIZE=30 -p 4433:4433 meson 
