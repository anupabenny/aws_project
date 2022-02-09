#!/bin/bash
yum update -y
yum install httpd -y
systemctl start httpd
systemctl enable httpd
echo "<h1>hello from $(curl http://169.254.169.254/latest/meta-data/instance-id)</h1>" > /var/www/html/index.html
