#!/bin/sh

cat <<EOF > /etc/stunnel/stunnel.conf
foreground = yes
socket = l:TCP_NODELAY=1
socket = r:TCP_NODELAY=1

[redis]
client = yes
accept = 6380
connect = ${CONNECT}:6380
EOF

exec /usr/bin/stunnel /etc/stunnel/stunnel.conf