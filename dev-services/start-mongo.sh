#!/bin/sh

docker run -d \
-e "MONGODB_INITDB_ROOT_USERNAME=sa" \
-e "MONGODB_INITDB_ROOT_PASSWORD=M&pa55w0rd" \
-p 27017:27017 \
-v $PWD/ticken-db/mongo:/data/db \
--name ticken-mongo \
mongo:latest