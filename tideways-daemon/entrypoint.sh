#!/bin/sh
set -e

extra="${DAEMON_OPTIONS} --hostname=${HOSTNAME:-tideways}"
extra="${extra} --env=${TIDEWAYS_ENV:-development}"
extra="${extra} --address=0.0.0.0:${TIDEWAYS_PORT_TCP}"
extra="${extra} --udp=0.0.0.0:${TIDEWAYS_PORT_UDP}"

/usr/bin/tideways-daemon $extra
