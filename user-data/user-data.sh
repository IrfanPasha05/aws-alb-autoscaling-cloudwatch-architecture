#!/bin/bash
apt update -y
apt install apache2 -y
systemctl start apache2
systemctl enable apache2

INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

echo "<h1>AWS Auto Scaling Project</h1>" > /var/www/html/index.html
echo "<p>Instance ID: $INSTANCE_ID</p>" >> /var/www/html/index.html
