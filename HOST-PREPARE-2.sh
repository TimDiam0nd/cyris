# ensure you have done the following first:
# ran the hostprepare script without any issues
# allowed sudo without a password (run "sudo visudo" then append "cyuser ALL=(ALL) NOPASSWD: ALL")
# downloaded the basevm files and unzipped them (default should be /home/cyuser/images/)

ssh-copy-id cyuser@localhost

# to solve qemu/libvirt permission denied errors
sudo echo 'User = "root"' >> /etc/libvirt/qemu.conf
sudo echo 'group = "root"' >> /etc/libvirt/qemu.conf
sudo systemctl restart libvirtd
