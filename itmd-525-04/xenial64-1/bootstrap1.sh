#!/usr/bin/env bash


sudo apt-get update
sudo apt-get install -y mongodb
sudo systemctl disable mongodb
sudo systemctl stop mongodb
sudo mkdir -p /home/vagrant/data/rs1
sudo chown -R vagrant:vagrant /home/vagrant/data
sudo hostnamectl set-hostname m1
sudo sed -i -e '127\.0\.1\.1    ubuntu-xenial ubuntu-xenial/127\.0\.1\.1 m1 m1' /etc/hosts