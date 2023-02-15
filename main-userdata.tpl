#!/bin/bash
sudo hostnamectl set-hostname ${new_hostname} &&
sudo apt update
sudo apt install -y gnupg2 curl software-properties-common
curl -fsSL https://packages.grafana.com/gpg.key|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/grafana.gpg
sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"
sudo apt update
sudo apt -y install grafana
sudo systemctl enable --now grafana-server
