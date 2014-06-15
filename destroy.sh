#!/bin/sh

VMHOST=$1

while [[ -z $VMHOST ]]; do
  read -p "Please specify host to destroy: " VMHOST
done

vagrant destroy $VMHOST
vagrant ssh master -c "sudo /opt/puppet/bin/puppet cert clean ${VMHOST}.local" -- -q
vagrant ssh master -c "sudo /opt/puppet/bin/puppet node deactivate ${VMHOST}.local" -- -q
