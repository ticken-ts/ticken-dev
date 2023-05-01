docker run \
-d \
--name ticken-dev-eth \
-p 8545:8545 \
trufflesuite/ganache:latest \
--host 0.0.0.0 \
--wallet.deterministic \
--wallet.totalAccounts 5 \