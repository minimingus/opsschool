#!/bin/bash
#add fix to exercise4-server2 here
echo "192.168.100.10 server1 server1" | sudo tee -a /etc/hosts
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/ssh
d_config
sudo systemctl restart sshd
