#!/bin/bash

rsync -avRl /webbackup/ /bakvg/web_backup/ > /dev/null 2>&1
rsync -avRl /sqlbackup/ /bakvg/sql_backup/ > /dev/null 2>&1
rsync -avRl /ftpbackup/ /bakvg/ftp_backup/ > /dev/null 2>&1
