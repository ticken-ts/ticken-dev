docker run \
-d \
--name ticken-keycloak \
-p 8080:8080 \
-e KEYCLOAK_ADMIN=admin \
-e KEYCLOAK_ADMIN_PASSWORD=admin \
-v "$PWD/keycloak/keycloak-themes":"/opt/keycloak/themes" \
quay.io/keycloak/keycloak:latest \
start-dev
