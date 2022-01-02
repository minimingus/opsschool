#!/bin/bash
#add fix to exercise2 here
#issue is with the hosts file, there is an extra linen for www.ascii-art.de
#the solution is to remove it
sed -i '$d' /etc/hosts
