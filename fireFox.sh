#!/bin/bash
echo 'deb http://ftp.hr.debian.org/debian sid main contrib non-free' >> /etc/apt/sources.list
apt install -t sid firefox
