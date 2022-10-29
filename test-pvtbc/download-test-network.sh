curl -sSL https://bit.ly/2ysbOFE | bash -s -- 2.2.2 1.4.9

mv ./fabric-samples/test-network ./test-network
mv ./fabric-samples/config ./config
mv ./fabric-samples/bin ./bin

rm -r ./fabric-samples