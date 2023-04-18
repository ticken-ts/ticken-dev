docker run \
-d \
--name ticken-keycloak \
-p 8080:8080 \
-e KEYCLOAK_ADMIN=admin \
-e KEYCLOAK_ADMIN_PASSWORD=admin \
-v "$PWD/keycloak/keycloak-themes":"/opt/keycloak/themes" \
quay.io/keycloak/keycloak:latest \
start-dev

sleep 30

keycloak_terraform_def="../ticken-infra/keycloak"

rm -f "${keycloak_terraform_def}/terraform.tfstate"

terraform -chdir=${keycloak_terraform_def} apply \
  -var="keycloak_admin_username=admin" \
  -var="keycloak_admin_password=admin" \
  -auto-approve


