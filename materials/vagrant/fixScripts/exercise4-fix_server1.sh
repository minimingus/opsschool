#!/bin/bash
#add fix to exercise4-server1 here
echo "192.168.100.11 server2 server2" | sudo tee -a /etc/hosts
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/ssh
d_config
sudo systemctl restart sshd
