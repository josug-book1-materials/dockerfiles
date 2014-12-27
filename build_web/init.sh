#!/bin/sh

cd /root/sample-app
sed -i "s/^rest_host = .*/rest_host = $REST_PORT_5555_TCP_ADDR/" endpoint.conf
sed -i "s/^db_host = .*/db_host = $DB_PORT_3306_TCP_ADDR/" endpoint.conf
sh /root/sample-app/server-setup/web.init.sh start

cat <<EOF >>~/.bashrc
trap 'sh /root/sample-app/server-setup/web.init.sh stop; exit 0' TERM
EOF
exec /bin/bash
