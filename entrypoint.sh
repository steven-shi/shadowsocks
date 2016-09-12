#! /bin/bash

nohup /root/shadowsocks/server.py -p 1984 -k $PASSWORD -m aes-256-cfb & 2> /dev/null
/usr/sbin/privoxy --no-daemon /etc/privoxy/config