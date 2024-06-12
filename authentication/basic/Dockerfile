FROM nginx:latest

COPY /config/nginx.conf /etc/nginx/
COPY /config/registry.conf /etc/nginx/conf.d/

ENV REGISTRY_AUTH_PASSWORD_FILE_PATH=/opt/docker-registry/registry.password \
    REGISTRY_AUTH_USERNAME=admin \
    REGISTRY_AUTH_PASSWORD=admin

RUN apt-get update \
    && apt-get install apache2-utils -y \
    && mkdir /opt/docker-registry
RUN htpasswd -Bbc $REGISTRY_AUTH_PASSWORD_FILE_PATH $REGISTRY_AUTH_USERNAME $REGISTRY_AUTH_PASSWORD

#VOLUME [ "/opt/docker-registry" ]

#ENTRYPOINT ["nginx", "-g", "daemon off;"]
