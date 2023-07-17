#!/bin/bash

: ' this script will setup constructive website on
centos 7 httpd service.
'
Link=https://www.tooplate.com/download/2102_constructive
#setup packages
yum install httpd wget unzip -y
#start &enable services
systemctl start httpd
systemctl enable httpd


#copy website data to apache Doc root die
cd /tmp/ && wget -O website.zip $Link --no-check-certificate
cd /tmp/ && unzip website.zip


cp -r /tmp/2102_constructive/* /var/www/html/

#restart service
systemctl restart httpd

