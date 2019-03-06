# Ansible with Docker.

In the previous weeks we were tasked with more simple Linux system administration tasks. This week, we were tasked to use Ansible (with Docker) for configuration.

There are 2 playbooks and 1 Dockerfile for this week's assignment.

* The Dockerfile installs nano, python, sudo, software-properties-common and Ansible. It also exposes port 80 for Apache, and sets an environment variable for PHP installation. This week I've decided to use the Ubuntu LTS version, opposed to Alpine. After the prerequisites are installed, we run both playbooks.

* Playbook 1 creates two users, adds them to a group, then adds the group to the sudoers file. There were a couple challenges with this playbook. The first is how Ansible handles passwords. All passwords must be given as a hash, so we use the ```password_hash()``` function, and pipe the password in. Another challenge was adding the users to the admin group without breaking the sudoers file.

* Playbook 2 sets up a LAMP stack (similar to Assignment 1). We install apache2, mysql-client, php, libapache2-mod-php, php-mysql and composer. Then we create an info.php page in /var/www/html/info.php. After this, we start the Apache2 service. The Dockerfile also has a CMD that will run Apache in the foreground whenever the container runs. A challenge I had with Playbook 2 was getting the info.php page to display. This is because I was running ```echo "<?php phpinfo(); ?>" > /var/www/html/info.php``` in a command module, opposed to a shell module. Command modules won't parse system operators (the ```>``` wasn't parsed, so the phpinfo code wasn't passed to /var/www/html/info.php, and it was just a blank file).

When running the Dockerfile, be sure to note the IP address the server is being ran on (172.17.0.2). Connect to this IP opposed to localhost in your browser. The info.php page should be available at 172.17.0.2/info.php. It's also reccomended to run the docker image in itneractive terminal mode so it's easier to close ```sudo docker run -it <IMAGE ID>```.

The following is a description of the assignment:

```
Using Docker, Vagrant or some other virtual environment and create 2 Ansible playbooks. Make sure to test your playbooks as I will be testing them.

Today's slides: Ansible.pptx (document omitted)

To test playbooks on localhost run:

$ ansible-playbook --connection=localhost <name_of_playbook>.yml

Playbook 1:

    Create a copy of /etc/sudoers file for backup
        If you are using docker for this exercise you will need to run: $ apt-get install -y sudo inside your container
    Create a group called admins
    Add 2 users to the admins group
    Give sudo power by updating the sudoers file

Playbook 2 -- LAMP Stack

    Install Apache & start the service
    Install Mysql-client only
    Install php7
    Install composer

We will use the LAMP stack playbook for next weeks assignment.

Submission:

    Upload the 2 .yml files and make sure to keep a copy

```
