FROM ubuntu:18.04

ENV TIDEWAYS_PORT_UDP 8135
ENV TIDEWAYS_PORT_TCP 9135
ENV TIDEWAYS_DAEMON_LOGFILE /dev/stdout

RUN apt-get update -qq \
 && apt-get install -y wget gnupg \
 && echo 'deb https://s3-eu-west-1.amazonaws.com/tideways/packages debian main beta' > /etc/apt/sources.list.d/tideways.list \
 && wget -qO - https://s3-eu-west-1.amazonaws.com/qafoo-profiler/packages/EEB5E8F4.gpg | apt-key add - \
 && apt-get update \
 && apt-get install -y tideways-daemon \
 && apt-get clean

COPY entrypoint.sh /

EXPOSE $TIDEWAYS_PORT_UDP/udp
EXPOSE $TIDEWAYS_PORT_TCP

ENTRYPOINT ["/entrypoint.sh"]
