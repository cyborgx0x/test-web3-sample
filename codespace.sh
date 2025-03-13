#!/bin/bash

sudo apt update


# Install required system dependencies
sudo apt install -y libnss3-dev libgdk-pixbuf2.0-dev libgtk-3-dev libxss-dev
sudo apt-get -y install libasound2
sudo apt install -y libgtk-4-1 libgraphene-1.0-0 libatomic1 libxslt1.1 libwoff1 libvpx7 libevent-2.1-7 libopus0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad libwebpdemux2 libavif13 libwebpmux3 libenchant-2-2 libsecret-1-0 libhyphen0 libmanette-0.2-0 libx264-163


# Install Google Chrome (with automatic yes to prompts)
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo "Y" | sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y
echo "Y" | sudo dpkg -i google-chrome-stable_current_amd64.deb

npx playwright install-deps
npm install -g pnpm
npx cypress install