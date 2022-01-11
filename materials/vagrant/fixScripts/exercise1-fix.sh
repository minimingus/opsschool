#!/bin/bash
#add fix to exercise1 here
#issue is with this line in the ip route table: 208.86.224.90 dev enp0s8 scope link src 192.168.100.10#the solution is to remove it from the route table
sudo ip route del 208.86.224.90
