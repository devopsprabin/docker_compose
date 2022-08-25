#!/bin/zsh

FILE="$1"
mysql -u root -p << EOF
drop database anydone;
create database anydone;
use anydone;
source $1
EOF