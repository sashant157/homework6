#!/bin/bash
sudo yum install -y nfs-utils
sudo systemctl enable nfs --now
sudo mkdir -p /srv/share/upload
sudo chown -R nfsnobody:nfsnobody /srv/share
sudo chmod 0777 /srv/share/upload
sudo cat << EOF > /etc/exports 
/srv/share 192.168.56.111/32(rw,sync,root_squash)
EOF


sudo exportfs -ra
