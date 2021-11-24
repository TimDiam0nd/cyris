#!/bin/bash

# This script is for preparing host Ubuntu Server 16.04 ready for CyRIS.

sudo apt update
sudo apt install qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils virt-manager python-pip python-paramiko tcpreplay sshpass pssh python-yaml python-scapy sendemail openssh-client openssh-server ifupdown wireshark
# ssh-copy-id cyuser@localhost
# needs to be run AFTER generating keys (ssh-keygen)
