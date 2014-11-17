#!/bin/bash
#Author:Robin Wen
#Desc:IncreBackup databases's file. Use this script in RHEL 6.1.

IP=192.168.139.13
SOURCEDIR=/var/lib/mysql-cluster
BACKUPDIR=/backup
DATE=`date +"%Y-%m-%d-%H-%m-%S"`

NUM=`find $BACKUPDIR -name "*.dump" | wc -l`
if [ -d $BACKUPDIR ]
then
	if [ NUM < 9 ]
	then
		echo "Backup dir already exists!"
		echo "Start baakup..."
		dump -1uf $BACKUPDIR/$DATE.dump $SOURCEDIR	
		sleep 2
		echo "Backup completed!"
	fi
else
	mkdir $BACKUPDIR
	echo "Start backup..."
	dump -1uf $BACKUPDIR/$DATE.dump $SOURCEDIR	
	sleep 2
	echo "Backup completed!"
fi
