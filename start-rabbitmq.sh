#!/bin/sh

docker run -d \
-e RABBITMQ_DEFAULT_USER=user \
-e RABBITMQ_DEFAULT_PASS=password \
-p 5672:5672 \
-p 15672:15672 \
--name ticken-bus \
rabbitmq:3-management