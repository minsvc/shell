#/bin/bash

sed -i -e 's/SELINUX=enforcing/SELINUX=disabled/'

systemctl stop firewalld
systemctl disabled firewalld

sudo yum install -y yum-utils   device-mapper-persistent-data   lvm2
sudo yum-config-manager     --add-repo     https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce

systemctl start docker
systemctl enable docker
docker run --restart always -e PASSWORD=yourpassword -e METHOD=aes-256-cfb -p 9992:8388 -p 9992:8388/udp -d shadowsocks/shadowsocks-libev



