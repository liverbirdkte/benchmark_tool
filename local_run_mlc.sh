#!/bin/bash

for i in {1..3}
do
	ansible-playbook -i ./ansible/servers.yml ./ansible/local_benchmark.yml
done
