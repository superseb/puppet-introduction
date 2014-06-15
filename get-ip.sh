#!/bin/sh

HOSTNAME=$1

while [[ -z $HOSTNAME ]]; do
  read -p "Please specify host: " HOSTNAME
done

vagrant ssh ${HOSTNAME} -c "facter ipaddress_eth1" -- -q
