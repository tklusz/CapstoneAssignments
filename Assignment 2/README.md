# V-Hosts

Fortunately, the Dockerfile from Assignment 1 came in handy for this assignment. Instead of running all of the code again from Assignment 1, I can just run "docker build -t assignment_1 ." in the Assignment 1 directory, then use that as the base image for this assignment.

My primary challenge with this assignment was creating the Dockerfile so it would work properly (although this wasn't actually a requirement). In order to get the Dockerfile working, I decided to use a shell script located in the Extras folder for all of the configuration.

After I completed the dockerfile configuration, I manually entered the commands in a docker interactive terminal ```docker run -it -p 8080:80 --name cit481 assign_2```. I set up a typescript before running the commands, as per assignment requirements and the output is also in the Extras folder. I opted to create a Site1.conf in the event there is a future assignment that requires us to not use the 000-default.conf configuration.

The following is a description of the assignment requirements.

```
This lab is going to deal with modifying Apache vHost configuration files to serve more than 1 website from a single server. The goal is to have 1 page displayed from localhost and the 2nd page served from the server site2.dev

    Use the LAMP stack you built during the last exercise
    Start a typescript file
    Modify/replace the contents of the file /var/www/html/index.html
        The file should include a title tag Site1
        Ex: template.txtPreview the document
        The body of the page should include your name, major and email
    Curl localhost to see your changes
        If you are running on windows: curl 192.168.99.100:8080
    Create a site2 directory in /var/www
    Create a index.html file inside the site2 directory & answer the following questions:
        What is IP and Named Based routing?
        What are apache directives?
    Create a new vHost for site2. Copy the 000-default.conf to site2.conf
        Update the DocumentRoot to point to the correct location on the file system 
        Add the ServerName directive
    Enable the newly created vHost
    Restart apache
    Update the /etc/hosts file to add your new domain
    Curl the new domain 
        The curl should show the answers to the questions listed above
        At this point we are serving 2 different websites from 2 different locations on the file system using one web server

 

    Let's add a little more complexity to the situation:
    Add the alias directive to the 000-default.conf vHost and point it to the /var/www/site2 directory
    Restart apache
    Curl localhost/site2
        This may display a document has moved error and you will need to curl the location it shows
        Ex: <p>The document has moved <a href="http://localhost/site2/">here</a>.</p>

 
```
