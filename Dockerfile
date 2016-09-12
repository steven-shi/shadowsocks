FROM python:2.7
MAINTAINER sshi <steven.shi@outlook.com>

ENV PASSWORD=ShadowsocksHijack

RUN apt-get update && \
    apt-get install -y privoxy

COPY shadowsocks /root/shadowsocks/
COPY privoxy /etc/privoxy/
COPY entrypoint.sh /root/
RUN chmod 755 /root/entrypoint.sh
RUN ln -sf /dev/stdout /var/log/privoxy/logfile

EXPOSE 1984/tcp

ENTRYPOINT ["/root/entrypoint.sh"]