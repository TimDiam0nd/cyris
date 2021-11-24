#!/bin/bash

# This script is for preparing host Ubuntu 18.04 ready for CyRIS.
# do NOT run this as root, rather enter your password when prompted

# install all the dependencies
sudo apt update
sudo apt install qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils virt-manager python-pip python-paramiko tcpreplay sshpass pssh python-yaml python-scapy python-boto3 sendemail openssh-client openssh-server ifupdown wireshark

ssh-keygen 
ssh-copy-id cyuser@localhost
