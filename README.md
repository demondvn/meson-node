# meson-node

build base on https://docs.meson.network/nodes/run-meson-nodes.html

    docker build . -t meson --build-arg TOKEN=bedkeoprilzaxgor3c32b24959d4a4c8
    
    docker run -d --name meson -p 4433:443 meson 
