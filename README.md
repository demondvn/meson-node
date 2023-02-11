# meson-node

build base on https://docs.meson.network/nodes/run-meson-nodes.html

    docker build . -t meson
    
    docker run -d --name meson -e TOKEN=bedkeoprilzaxgor3c32b24959d4a4c8 -p 4433:4433 meson 
