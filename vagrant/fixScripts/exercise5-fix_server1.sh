#!/bin/bash
ssh-keyscan -H server2 >> /home/vagrant/.ssh/known_host
ssh-keyscan -H server1 >> /home/vagrant/.ssh/known_host
ssh-keygen -t rsa -f /home/vagrant/.ssh/id_rsa -N "" -q
cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
sudo sh -c "cp /home/vagrant/.ssh/id_rsa /vagrant"
sudo sh -c "cp /home/vagrant/.ssh/id_rsa.pub /vagrant"
