#!/bin/bash

# This script is for preparing host Ubuntu 18.04 ready for CyRIS.
# do NOT run this as root, rather enter your password when prompted

# install all the dependencies
sudo apt update
sudo apt install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils ubuntu-vm-builder virt-manager python-pip python-paramiko tcpreplay sshpass pssh python-yaml python-scapy python-boto3 sendemail openssh-client openssh-server ifupdown wireshark

# add users for livbirt and kvm
sudo adduser `id -un` libvirt
sudo adduser `id -un` kvm

# setup ssh keys
ssh-keygen 
ssh-copy-id cyuser@localhost
