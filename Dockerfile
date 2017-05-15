FROM debian:jessie

EXPOSE 8123

# install zabbix-server
RUN apt-get update && \
    apt-get -y --no-install-recommends install polipo

ADD config /etc/polipo/config

USER proxy

CMD ["/usr/bin/polipo", "-c", "/etc/polipo/config"]
