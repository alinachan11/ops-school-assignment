#!/bin/bash
ssh-keyscan -H server1 >> /home/vagrant/.ssh/known_host
ssh-keyscan -H server2 >> /home/vagrant/.ssh/known_host
sudo sh -c "cp /vagrant/id_rsa /home/vagrant"
sudo sh -c "cp /vagrant/id_rsa.pub /home/vagrant"
sudo sh -c "rm -f /vagrant/id_rsa"
sudo sh -c "rm -f /vagrant/id_rsa.pub"
cat /home/vagrant/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
