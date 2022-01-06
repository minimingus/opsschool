#!/bin/bash
#add fix to exercise5-server1 here
echo 'AuthorizedKeysFile     /vagrant/authorized_keys' | sudo tee >> /etc/ssh/sshd_config
ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa <<<y >/dev/null 2>&1
touch /vagrant/authorized_keys
cat id_rsa.pub > /vagrant/authorized_keys
