#!/bin/bash
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | Sudo apt-key add -
sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
apt-get update
apt-get install google-chrome-stable
