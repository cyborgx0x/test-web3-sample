#!/bin/bash
# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash

# Set up NVM environment
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Install Node.js v20 and use it
nvm install 20
nvm use 20

# Install pnpm globally
npm install -g pnpm

# Install required system dependencies
sudo apt install -y libnss3-dev libgdk-pixbuf2.0-dev libgtk-3-dev libxss-dev
sudo apt-get -y install libasound2
sudo apt install -y libgtk-4-1 libgraphene-1.0-0 libatomic1 libxslt1.1 libwoff1 libvpx7 libevent-2.1-7 libopus0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad libwebpdemux2 libavif13 libwebpmux3 libenchant-2-2 libsecret-1-0 libhyphen0 libmanette-0.2-0 libx264-163

# Install Playwright dependencies
npx playwright install-deps

# Install Google Chrome (with automatic yes to prompts)
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo "Y" | sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y
echo "Y" | sudo dpkg -i google-chrome-stable_current_amd64.deb

# Install Cypress
npx cypress install