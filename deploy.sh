#!/bin/bash

echo "Deploy started..."
sudo apt install git

git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install

puma -d
ps aux | grep puma

echo "Deployed on http://<app host>:9292"
