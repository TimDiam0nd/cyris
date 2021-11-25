# ensure you have done the following first:
# ran the hostprepare script without any issues
# allowed sudo without a password (run "sudo visudo" then append "cyuser ALL=(ALL) NOPASSWD: ALL")
# downloaded the basevm files and unzipped them (default should be /home/cyuser/images/)

# to solve qemu/libvirt permission denied errors
sudo echo 'User = "root"' >> /etc/libvirt/qemu.conf
sudo echo 'group = "root"' >> /etc/libvirt/qemu.conf
sudo systemctl restart libvirtd

sudo mkdir /etc/qemu/
sudo touch /etc/qemu/bridge.conf
sudo echo "allow br0" >> /etc/qemu/bridge.conf

echo "allow all" | sudo tee /etc/qemu/libvirt-qemu.conf
echo "include /etc/qemu/libvirt-qemu.conf" | sudo tee --append /etc/qemu/bridge.conf
sudo chown root:libvirt-qemu /etc/qemu/libvirt-qemu.conf
sudo chmod 640 /etc/qemu/libvirt-qemu.conf
