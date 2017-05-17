#!/bin/bash

apt update --assume-yes
apt upgrade --assume-yes
apt install docker.io --assume-yes
git clone https://github.com/nctiggy/docker-influxdb-grafana.git
cd docker-influxdb-grafana
docker pull grafana/grafana
docker pull influxdb
docker pull telegraf
docker-compose up -d
