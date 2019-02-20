FROM ubuntu:latest
RUN apt-get update
ENV TZ=America/Los_Angeles
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt install -qq -y apache2 > /dev/null 
RUN apt install -qq -y mysql-client > /dev/null
RUN apt install -y php libapache2-mod-php php-mysql
RUN apt install -qq -y curl nano > /dev/null
RUN touch /var/www/html/info.php
RUN echo "<?php phpinfo(); ?>" > /var/www/html/info.php
RUN service apache2 start && curl localhost && curl localhost/info.php
