my_pass=$(sudo grep 'temporary password' /var/log/mysqld.log | cut -d":" -f4)
echo $my_pass

