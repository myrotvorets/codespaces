FROM ghcr.io/sjinks/codespaces/nodejs:latest@sha256:d71df786593aa60335056e212db127d27d426cf8af08792e9ce74ea1d9b93a0e

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
