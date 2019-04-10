FROM ubuntu:latest

# Setting environment variable for timezone (required for tzdata install).
ENV TZ=America/Los_Angeles
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 8080

# Updating Ubuntu, then installing required software.
RUN apt-get update
RUN apt install -qq -y apache2 mysql-client php libapache2-mod-php php-mysql > /dev/null

# Copying our site file and configuration file.
COPY site.html site.html
COPY 000-default.conf 000-default.conf

# Moving site and configuration files, then enabling the new site.
RUN mv site.html /var/www/html/index.html
RUN mv 000-default.conf /etc/apache2/sites-available/000-default.conf && \
    a2dissite 000-default.conf && a2ensite 000-default.conf

# Run apache when the container starts.
CMD apachectl -D FOREGROUND
