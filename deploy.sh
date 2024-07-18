#!/bin/bash

# Ensure you have the necessary permissions and tools installed
# aws configure
# eksctl get cluster
# ansible --version

# Run the Ansible playbook
ansible-playbook Ansible-Play/deploy_smart_contract.yml -vvvvv
