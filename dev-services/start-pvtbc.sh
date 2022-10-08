#!/bin/sh

function getFullPath() {
    relativePath=$1
    echo "$(cd "$(dirname "$relativePath")"; pwd)/$(basename "$relativePath")"
}


cd ../test-network
echo $(getFullPath $PWD/../../ticken-chaincodes/ticket-chaincode)

# up the network using couchbase
# as a main database for the peer
sh network.sh up -s couchbase

# create a channel
sh network.sh createChannel -c ticken-test-channel 

# deploy a event chaincode
# sh network.sh deployCC \
# -ccn ticken-event \
# -ccp $(getFullPath $PWD/../../ticken-chaincodes/ticken-event-chaincode) \
# -ccl go \
# -c ticken-test-channel


# deploy a ticket chaincode
sh network.sh deployCC \
-ccn ticken-ticket \
-ccp $(getFullPath $PWD/../../ticken-chaincodes/ticken-ticket-chaincode) \
-ccl go \
-c ticken-test-channel