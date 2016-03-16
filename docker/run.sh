#!/usr/bin/env bash
#!/bin/bash
#
# Starts the mysql database & runs the rails app.
#
[ -z "$HOST_PROTOCOL" ] && export HOST_PROTOCOL=http
[ -z "$HOST_DOMAIN" ] && export HOST_DOMAIN=localhost
[ -z "$HOST_PORT" ] && export HOST_PORT=3000
[ -z "$HOST" ] && export HOST="$HOST_PROTOCOL://$HOST_DOMAIN:$HOST_PORT"

#TODO: would like to support these parameters at some point
#[ -z "$MYSQL_HOST" ] && export MYSQL_HOST=`/sbin/ip route|awk '/default/ { print $3 }'`
#[ -z "$MYSQL_PORT" ] && export MYSQL_PORT=5984


#Setup the database
service mysql start
mysql --user="root" --execute="CREATE DATABASE tcsampleapp;"
mysql --user="root" tcsampleapp < ./data/lti2_tc_mysql_init.sql
mysql --user="root" tcsampleapp < ./data/tcsampleapp.sql

mysql  --user="root" --database "tcsampleapp" \
      --execute="update lti2_tp_registries set content = '$HOST' where name = 'tp_deployment_url'"
mysql  --user="root" --database "tcsampleapp" \
      --execute="update lti2_tp_registries set content = '/apps/lti2_tc/wirelog.html' where name = 'wirelog_filename'"

##Migrate the database
#rake db:migrate RAILS_ENV=development

#run the app
rails s -p 3000