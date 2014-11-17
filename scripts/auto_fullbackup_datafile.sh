#!/bin/bash
#Author:Robin Wen
#Desc:Backup databases's file. Use this script in RHEL 6.1.

IP=192.168.139.13
SOURCEDIR=/var/lib/mysql-cluster
BACKUPDIR=/backup
DATE=`date +"%Y-%m-%d-%H-%m-%S"`

if [ -d $BACKUPDIR ]
then
	echo "Backup dir already exists!"
	echo "Start baakup..."
	dump -0uf $BACKUPDIR/$DATE.dump $SOURCEDIR	
	sleep 2
	echo "Backup completed!"
else
	mkdir $BACKUPDIR
	echo "Start backup..."
	dump -0uf $BACKUPDIR/$DATE.dump $SOURCEDIR	
	sleep 2
	echo "Backup completed!"
fi
