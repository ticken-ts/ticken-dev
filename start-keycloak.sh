docker run \
-d \
--name ticken-keycloack \
-p 8080:8080 \
-e KEYCLOAK_ADMIN=admin \
-e KEYCLOAK_ADMIN_PASSWORD=admin \
-v "$PWD/themes":"/opt/keycloak/themes" \
quay.io/keycloak/keycloak:latest \
start-dev