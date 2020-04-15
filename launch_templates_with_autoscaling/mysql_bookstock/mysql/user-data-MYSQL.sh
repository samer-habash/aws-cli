#!/usr/bin/bash
yum install docker -y
systemctl enable docker
systemctl start docker
docker run -d  \
-e MYSQL_ROOT_PASSWORD=secret \
-e MYSQL_DATABASE=bookstack \
-e MYSQL_USER=bookstack \
-e MYSQL_PASSWORD=secret \
-p 3306:3306
 mysql:5.7.21