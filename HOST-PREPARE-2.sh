# ensure you have done the following first:
# ssh-keygen
# ran the hostprepare script without any issues
# allowed sudo without a password (run "sudo visudo" then append "cyuser ALL=(ALL) NOPASSWD: ALL")

sudo echo 'User = "root"' >> /etc/libvirt/qemu.conf
sudo echo 'group = "root"' >> /etc/libvirt/qemu.conf
sudo systemctl restart libvirtd
