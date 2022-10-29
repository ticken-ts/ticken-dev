#!/bin/sh

docker run -d \
-e "MONGO_INITDB_ROOT_USERNAME=admin" \
-e "MONGO_INITDB_ROOT_PASSWORD=admin" \
-p 27017:27017 \
-v $PWD/ticken-db/mongo:/data/db \
--name ticken-mongo \
mongo:latest