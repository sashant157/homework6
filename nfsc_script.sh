#!/bin/bash
sudo yum install -y nfs-utils
sudo echo "192.168.56.110:/srv/share/ /mnt nfs vers=3,proto=udp,noauto,x-systemd.automount 0 0" >> /etc/fstab
sudo systemctl daemon-reload
sudo systemctl restart remote-fs.target
