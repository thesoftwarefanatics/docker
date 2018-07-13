#!/bin/sh
set -e

extra="${PROXY_OPTIONS} --hostname=${HOSTNAME:-tideways}"
extra+=" --listen=0.0.0.0:${TIDEWAYS_PORT}"

/usr/bin/tideways-proxy $extra
