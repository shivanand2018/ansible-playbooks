#!/bin/bash
newrootpass="admin@#123"
password=$(sudo grep 'A temporary password is generated for root@localhost' /var/log/mysqld.log | awk -F ' ' '{print $(NF)}')
mysqladmin -u root -p'${password}'  password '${newrootpass}'
