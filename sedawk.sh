#!/bin/bash

cp passwd passwd_new

awk -F: -v user="saned" -v shell="/bin/bash" 'BEGIN{OFS=":"} {if($1==user)$7=shell; print}' passwd_new > tmp && mv tmp passwd_new

sed -i '/avahi/s|/usr/sbin/nologin|/bin/bash|' passwd_new

awk -F: 'BEGIN{OFS=":"} {print $1,$3,$5,$7}' passwd_new > tmp && mv tmp passwd_new

sed -i '/daemon/d' passwd_new

awk -F: 'BEGIN{OFS=":"} ($3%2==0){$7="/bin/zsh"} {print}' passwd_new > tmp && mv tmp passwd_new

truncate -s -1 passwd_new

