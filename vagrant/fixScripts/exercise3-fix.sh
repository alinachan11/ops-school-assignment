#!/bin/bash
sudo sed -i 's/Deny from all/Allow from all/g' /etc/apache2/sites-enabled/000-default
sudo sed -i 's/deny from all/allow from all/g' /etc/apache2/sites-enabled/000-default
sudo service apache2 restart