#!/bin/zsh

FILE="$1"
DATABASE=$(echo $FILE | cut -d'.' -f1)
echo $FILE $DATABASE
mysql -u root -p << EOF
drop database IF EXISTS $DATABASE;
create database $DATABASE;
use $DATABASE;
source $1
EOF