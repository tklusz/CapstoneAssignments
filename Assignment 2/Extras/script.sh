service apache2 start

mv site1.html /var/www/html/index.html
curl localhost

mkdir /var/www/site2
touch /var/www/site2/index.html
mv site2.html /var/www/site2/index.html

mv site1.conf /etc/apache2/sites-available/site1.conf
mv site2.conf /etc/apache2/sites-available/site2.conf

echo "127.0.0.1 site2.assignment2.local" >> /etc/hosts

a2ensite site1.conf
a2ensite site2.conf
service apache2 reload

curl site2.assignment2.local

mv 000-default.conf /etc/apache2/sites-available/000-default.conf

a2dissite 000-default.conf
a2ensite 000-default.conf
service apache2 reload

curl localhost/site2
