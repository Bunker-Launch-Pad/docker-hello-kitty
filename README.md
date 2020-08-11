# docker-hello-kitty
You can see our discussion about [why learning Docker is important for startup founders.](https://youtu.be/kYfA-Uku1h0)


Docker and configuration files for node.js web server for Hello Kitty project.

To build the docker container
docker build -t hello-kitty .

To run the container
docker run -p 3000:8080 -d hello-kitty
