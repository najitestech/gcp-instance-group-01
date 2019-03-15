#! /bin/bash
"client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/terraform%40terraform-project-2020.iam.gserviceaccount.com"
sudo yum update -y
sudo yum -y install -y wget
wget http://pkgs.repoforge.org/figlet/figlet-2.2.2-1.el6.rf.x86_64.rpm
sudo yum install epel-release*
sudo yum install -y figlet
sudo yum install -y httpd
cat <<EOF > /var/www/html/index.html
<html><body><h1>Hello World</h1>
<p>This page was created from a simple startup script!</p>
</body></html>
EOF

       #Intalling Ansible
sudo yum -y install epel-release
sudo yum -y install ansible
       #Making some directories
mkdir /etc/ansible/inventory
mkdir /etc/ansible/myroles
       #Adding user
sudo useradd -p $(openssl passwd -1 Passwd@) najite
