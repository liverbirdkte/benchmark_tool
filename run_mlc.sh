#!/bin/bash

sudo -E tee ./ansible/servers.yml >/dev/null << EOF
[servers]
EOF

source /etc/kolla/admin-openrc.sh

openstack server list -f value -c Networks | awk -F"=" '{print $2}' >> ./ansible/servers.yml

#ip netns exec qrouter-f210cff1-ae19-4e55-8e4b-691be4dd18eb ansible-playbook -i ./ansible/servers.yml ./ansible/benchmark.yml --extra-vars "ansible_python_interpreter=/usr/bin/python3"

i
