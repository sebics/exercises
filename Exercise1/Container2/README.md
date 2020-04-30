docker build -t image2 .
docker run -d --rm --name cont2 image2
docker logs -f cont2
