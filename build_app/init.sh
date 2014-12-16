#!/bin/sh

cd /root/sample-app
sed -i "s/^rest_host = .*/rest_host = $REST_PORT_5555_TCP_ADDR/" endpoint.conf
sed -i "s/^db_host = .*/db_host = $DB_PORT_3306_TCP_ADDR/" endpoint.conf
python rest.py >> rest.log &

cat <<EOF >>~/.bashrc
trap 'pkill -f rest.py && sleep 1; exit 0' TERM
EOF
exec /bin/bash
