#!/bin/sh

docker run -d \
-e "ACCEPT_EULA=Y" \
-e "SA_PASSWORD=M&pa55w0rd" \
-e "MSSQL_PID=Express" \
-p 1433:1433 \
-v $PWD/ticken-db/mssql:/var/opt/mssql \
--name ticken-mssql \
mcr.microsoft.com/mssql/server:2019-latest
