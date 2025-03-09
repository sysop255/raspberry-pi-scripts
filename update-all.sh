#!/bin/bash

sudo apt update -y
sudo apt full-upgrade -y
sudo apt clean
sudo apt dist-upgrade -y
sudo apt -y purge "pulseaudio"
sudo apt autoremove -y
