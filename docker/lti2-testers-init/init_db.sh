#!/usr/bin/env bash
mysqladmin -uroot -proot create tcsampleapp
mysql -uroot -proot -e"grant all on tcsampleapp.* to 'ltiuser'@'%'"
mysql --user="ltiuser" --password="ltipswd" tcsampleapp < /docker-entrypoint-initdb.d/lti2_tc_mysql_init.sqldata

mysqladmin -uroot -proot create tpsampleapp
mysql -uroot -proot -e"grant all on tpsampleapp.* to 'ltiuser'@'%'"
mysql --user="ltiuser" --password="ltipswd" tpsampleapp < /docker-entrypoint-initdb.d/lti2_tp_mysql_init.sqldata