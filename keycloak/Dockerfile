FROM quay.io/keycloak/keycloak
COPY ./keycloak-themes /opt/keycloak/themes
COPY ./keycloak-realms /opt/keycloak/data/import
RUN /opt/keycloak/bin/kc.sh import --file /opt/keycloak/data/import/keycloak-realms.json
WORKDIR "/opt/keycloak/bin"
CMD ["start-dev"]
