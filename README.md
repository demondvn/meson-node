# meson-node

build base on https://docs.meson.network/nodes/run-meson-nodes.html

    docker build . -t meson
    
    docker run -d --name meson -p 4433:443 meson --cache.size=30 --token=bedkeoprilzaxgor3c32b24959d4a4c8 
