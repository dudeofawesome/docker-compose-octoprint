#!/bin/sh

sudo cp docker-octoprint.service /etc/systemd/system/
sudo systemctl enable docker-octoprint.service
sudo systemctl start docker-octoprint.service

