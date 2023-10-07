#!/bin/sh

set -e

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

cd /usr/src/service

if [ -d src/specs ] && [ -z "$(ls -A src/specs)" ] && [ -d .git ]; then
    git submodule update --init --recursive
fi

export NPM_CONFIG_AUDIT=0

USERCONFIG=
if [ -z "${npm_config_userconfig}" ]; then
    USERCONFIG="--userconfig .npmrc.local"
fi

if [ ! -d node_modules ]; then
    CMD=ci
else
    CMD=install
fi

# shellcheck disable=SC2086 # We need to pass the arguments as-is
npm "${CMD}" --ignore-scripts ${USERCONFIG} && npm rebuild && npm run prepare --if-present

if [ ! -d node_modules ]; then
    echo "FATAL: Failed to install dependencies"
    exit 1
fi

npm run wait-for-mysql --if-present
if [ -f test/migrate.mts ]; then
    npx --no-install ts-node ./test/migrate.mts
fi

exec npm run start:dev
