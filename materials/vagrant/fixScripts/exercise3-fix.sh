#!/bin/bash
#add fix to exercise3 here
sudo chmod 777 /etc/apache2/sites-available
sed -i 's/denied/granted/g' /etc/apache2/sites-available/000-default.conf
