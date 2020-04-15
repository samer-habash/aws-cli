#!/usr/bin/bash
yum install docker -y
systemctl enable docker
systemctl start docker
docker run -d --net bookstack_nw  \
-e DB_HOST=3.94.149.147:3306 \
-e DB_DATABASE=bookstack \
-e DB_USERNAME=bookstack \
-e DB_PASSWORD=secret \
-p 8080:80 \
solidnerd/bookstack:0.27.5