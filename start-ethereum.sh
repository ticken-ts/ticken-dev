docker run \
-d \
--name ticken-dev-eth \
trufflesuite/ganache:latest \
--host 0.0.0.0 \
--wallet.deterministic \
--wallet.totalAccounts 5 \