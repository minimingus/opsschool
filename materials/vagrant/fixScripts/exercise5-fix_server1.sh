#!/bin/bash
#add fix to exercise5-server1 here

sudo sed -i 's/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/g'  /etc/ssh/ssh_config
sudo systemctl restart ssh
sudo systemctl restart sshd
sudo ssh-keygen -t rsa -f /home/vagrant/.ssh/id_rsa -q -P ""
sudo chmod 777 /home/vagrant/.ssh/id_rsa
sudo cp /home/vagrant/.ssh/id_rsa.pub /vagrant
