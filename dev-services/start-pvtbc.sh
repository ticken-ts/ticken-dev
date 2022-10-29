#!/bin/sh

function getFullPath() {
    relativePath=$1
    echo "$(cd "$(dirname "$relativePath")"; pwd)/$(basename "$relativePath")"
}

cd ../test-pvtbc/test-network

# set bin path
export PATH=${PWD}/../bin:$PATH
export FABRIC_CFG_PATH=$PWD/../config/

# up the network using couchbase
# as a main database for the peer
sh network.sh up -s couchbase

# create a channel
sh network.sh createChannel -c ticken-channel 

# deploy a event chaincode
sh network.sh deployCC \
-ccn ticken-event \
-ccp $(getFullPath $PWD/../../../ticken-chaincodes/ticken-event-chaincode) \
-ccl go \
-c ticken-channel

# deploy a ticket chaincode
sh network.sh deployCC \
-ccn ticken-ticket \
-ccp $(getFullPath $PWD/../../../ticken-chaincodes/ticken-ticket-chaincode) \
-ccl go \
-c ticken-channel

