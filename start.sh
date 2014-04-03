#!/bin/bash
#Sets up RabbitMQ server and creates users
#  USERPASS example:
#  USERPASS="user1:user1pass user2:user2pass user3:user3pass" 
#USERPASS=${USERPASS:-"naily:naily"}
USERNAME=${USERNAME:-"naily"}
PASSWORD=${PASSWORD:-"naily"}

sed -i "s/DEFAULT_USER/$USERNAME/" /etc/rabbitmq/rabbitmq.config
sed -i "s/DEFAULT_PASS/$PASSWORD/" /etc/rabbitmq/rabbitmq.config

#/usr/sbin/rabbitmq-server &
#sleep 10
#while read username password; do
#  rabbitmqctl add_user "$username" "$password"
#  rabbitmqctl set_permissions -p '/' "$username" '.*' '.*'  '.*'
#done < <(echo -e $USERPASS | tr ' ' '\n' | tr ':' ' ' )
#rabbitmqctl stop
#sleep 1
/usr/sbin/rabbitmq-server
