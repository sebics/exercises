docker build -t image0 .
docker run --name cont0 --rm -p 8080:80 image0
docker run -d --name cont0 --rm -p 8080:80 --volume $(pwd)/index1.html:/var/www/html/index.html image0
 docker exect -it cont0 bash

optional we can connect the 2 containers to the same network:
$ docker network create -d bridge my-net
$ docker run --network=my-net -itd --name=cont0 image0
