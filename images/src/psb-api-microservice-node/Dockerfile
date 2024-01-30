FROM ghcr.io/sjinks/codespaces/nodejs:latest@sha256:265cf89b5531c7346526f8ffa31782854851ba308a16e84f2b8c87ce96b37a89

# For microservices depending on sharp
RUN apk add --no-cache vips vips-cpp

# Tools for experiments
RUN apk add --no-cache mc
RUN npm i -g ts-node typescript npm-check-updates

# nginx
RUN \
    apk add --no-cache nginx && \
    sed -i "s/user nginx;/user ${CONTAINER_USER};/" /etc/nginx/nginx.conf && \
    chown -R "${CONTAINER_USER}:${CONTAINER_USER}" /run/nginx /var/log/nginx /var/lib/nginx && \
    rm -f /etc/nginx/http.d/default.conf

COPY rootfs /
WORKDIR /usr/src/service

RUN \
    chown -R "${CONTAINER_USER}:${CONTAINER_USER}" /usr/src/service && \
    install -d -o "${CONTAINER_USER}" -g "${CONTAINER_USER}" /var/log/app
