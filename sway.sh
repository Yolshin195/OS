#!/bin/bash
#Подключаем тестовые пакеты

echo "deb http://http.debian.net/debian stretch main contrib" > /etc/apt/sources.list.d/stretch.list
apt-get update
apt-get install libgles2-mesa-dev libdrm2 libdrm-dev libegl1-mesa-dev xwayland

#Устанавливае sway
apt-get install cmake build-essential libinput10 libinput-dev libxkbcommon0 libxkbcommon-dev libudev-dev libxcb-image0 libxcb-image0-dev libxcb-composite0 libxcb-composite0-dev libxcb-xkb1 libxcb-xkb-dev libgbm1 libgbm-dev libdbus-1-dev libsystemd-dev zlib1g-dev libpixman-1-dev libxcb-ewmh-dev wayland-protocols

git clone https://github.com/Cloudef/wlc.git
cd wlc
git submodule update --init --recursive
mkdir target
cd target
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local -DSOURCE_WLPROTO=ON ..
make
sudo make install

cd ../..

apt-get install libpcre3 libpcre3-dev libcairo2 libcairo2-dev libpango1.0-0 libpango1.0-dev asciidoc libjson-c3 libjson-c-dev libcap-dev xsltproc libpam0g-dev
git clone https://github.com/SirCmpwn/sway.git
cd sway/
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_SYSCONFDIR=/etc ..
make
make install
