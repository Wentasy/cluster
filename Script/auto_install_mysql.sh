#!/bin/bash

groupadd -g 27 mysql
useradd -u 27 -g 27 -r -M -s /sbin/nologin mysql

id mysql

TEST=`grep "^PATH" /root/.bash_profile`:/usr/local/mysql/bin
sed "10a$TEST" /root/.bash_profile -i
sed "10d" /root/.bash_profile -i

cat /root/.bash_profile
source /root/.bash_profile

/etc/init.d/mysqld start
