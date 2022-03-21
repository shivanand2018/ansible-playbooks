#!/bin/bash
for ip in 192.168.2.{115,116}
do
scp install.sh ansadmin@${ip}:/tmp
ssh ansadmin@${ip} 'bash /tmp/install.sh'
done
