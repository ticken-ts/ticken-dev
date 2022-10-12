#!/bin/bash

function getFullPath() {
    relativePath=$1
    echo "$(cd "$(dirname "$relativePath")"; pwd)/$(basename "$relativePath")"
}


cd ../test-pvtbc/test-network

# up the network using couchbase
# as a main database for the peer
./network.sh up -s couchbase

# create a channel
./network.sh createChannel -c ticken-channel

deploy a event chaincode
./network.sh deployCC \
-ccn ticken-event \
-ccp $(getFullPath $PWD/../../../ticken-chaincodes/ticken-event-chaincode) \
-ccl go \
-c ticken-channel


# deploy a ticket chaincode
./network.sh deployCC \
-ccn ticken-ticket \
-ccp $(getFullPath $PWD/../../../ticken-chaincodes/ticken-ticket-chaincode) \
-ccl go \
-c ticken-channel

