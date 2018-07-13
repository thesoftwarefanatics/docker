#!/bin/sh
set -e

extra="${DAEMON_OPTIONS} --hostname=${HOSTNAME:-tideways}"
extra+=" --env=${TIDEWAYS_ENV:-development}"
extra+=" --address=0.0.0.0:${TIDEWAYS_PORT_TCP}"
extra+=" --udp=0.0.0.0:${TIDEWAYS_PORT_UDP}"

/usr/bin/tideways-daemon $extra
