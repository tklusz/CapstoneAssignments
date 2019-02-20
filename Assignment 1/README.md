# Lamp Stack

This was a relatively simple assignment where we had to set up a Lamp stack.
Mine was done using Docker.

I originally used a Dockerfile with all of the commands written out, then after
testing to make sure it properly worked, copied the commands into a docker
interactive terminal with typescript enabled.

The dockerfile included is the dockerfile I made to test the assignment, and the
481 file is the output of the typescript.

The description of the assignment is as follows:

```
Use Docker, Virtual Box, Vagrant or some other type of virtualization to create a LAMP Stack;

    If using Docker start Ubuntu container using the latest tag:
        docker run -it -p 8080:80 --name cit481 ubuntu:latest bash
        Breakdown of command above:
            docker run - run a container
            -it - start the container with interactive terminal
            -p - map local port 8080 to port 80 inside the container
            --name - name the container cit481
            ubuntu:latest - use the image named ubuntu:latest
            bash - use bash shell when container starts
    Start typescript file name cit481
        script cit481
    Install required packages for LAMP stack. Plus the following additional packages;
        RUN ALL THE FOLLWOING INSTALLS with -qq flag and redirect output to /dev/null
        E.x: apt-get update -qq > /dev/null
            curl 
            text editor of your choice
            apache
            mysql-client
    Install PHP & it's needed dependencies without the -qq flags:
        $ apt-get install php libapache2-mod-php php-mysql
    Curl localhost to show contents of apache default page
    Curl localhost to show contents of info.php 
    Quit typescript 
    Copy typescript file from inside the container to your local file system and upload the file to canvas
        docker cp cit481:cit481.

```
