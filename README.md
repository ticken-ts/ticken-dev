# ticken-dev

## Running external services

### Requirement: docker and docker-compose

To bootstrap all the external services (except pvtbc), run:

```bash
docker-compose up -d
```

This will create the following services:
- Local simulated ethereum blockchain
- Mongo database for ticket and event service
- Keycloak server
- PostgreSQL database (for keycloak)
- RabbitMQ message broker

The data of all the services is stored in docker volumes, so you can stop and start the services without losing data.
To wipe the data, remove all the volumes:

```bash
docker volume rm ticken-dev_ethereum-db ticken-dev_keycloak-db ticken-dev_mongo-db
```

It is important to remove all the volumes when you want to start from scratch, otherwise you will have inconsistent data. 


## Running local PVTBC

#### Common errors

* `scripts/ccutils.sh: line 25: jq: command not found`

This error is caused by missing the jq dependency. `jq` is a shell
command that allows you to parse jsons if you are in mac execute the following command:

    brew install jq

## Running local public blockchain

### Requirement: ganache-cli

```bash
npm i -g ganache-cli
```
