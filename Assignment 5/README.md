# LAMP stack + Website.
This week's assignment was to create a LAMP stack using a Dockerfile, with a custom html page. The website must be served over localhost, using port 8080.

This assignment was relatively similar to Assignment 1, other than requiring a simple web page be served by the Apache server, and the port change.

In order to change the port, I used a new `000-default.conf` configuration file, that listens on port 8080. In order to actually serve the web page on localhost:8080, I also needed to change the network mode to host, using the following when running the image (after building):
* `sudo docker run --network host <image>`

The Dockerfile also has some changes compared to Assignment 1. I moved all of the install statements into one line, and added a CMD line to automatically run the apache2 server when the container starts. I also added some block comments to the code.
