# Prometheus Server

This assignment was to create a Prometheus server (the base image), then install
node exporter to retrieve system metrics. I split this assignment up into 2
separate Dockerfiles.

* The base Dockerfile for the Prometheus image by itself is located in `CapstoneAssignments/"Assignment 4"`.

* The image with Prometheus + node_exporter is located in `CapstoneAssignments/"Assignment 4"/node_exporter`.

## Run and Install - Base Prometheus
To create the Prometheus image using this Dockerfile, run `sudo docker build .` Inside the `CapstoneAssignments/"Assignment 4"` directory.

To run the Prometheus image in a container once complete, run `sudo docker run -p 9090:9090 <Image ID>`.

View the Prometheus dashboard at localhost:9090/graph.


## Run and Install - Prometheus + Node Exporter
To create the Prometheus + Node Exporter image using the Dockerfile, run `sudo docker build .` Inside the `CapstoneAssignments/"Assignment 4"/node_exporter` directory.

To run the Node Exporter image in a container once complete, run `sudo docker run -p 9090:9090 -p 9100:9100  <Image ID>`.

View the Prometheus dashboard at localhost:9090/graph. Expressions from node_exporter start with `node_`.

## Cleaning up
To stop all running containers, run `sudo docker stop $(sudo docker ps -a -q)`.

To delete all of your containers, run `sudo docker rm $(sudo docker ps -a -q)`.

To delete all of your images, run `sudo docker rmi $(sudo docker images -q)`.
