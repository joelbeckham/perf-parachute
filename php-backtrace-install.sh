#!/bin/bash -x
# Install this with
# source <(curl -Ls https://raw.githubusercontent.com/joelbeckham/perf-parachute/master/php-backtrace-install.sh)
# Then run sudo ./php-backtrace.sh

mkdir -p /tmp/backtrace
cd /tmp/backtrace

sudo apt install gdb -y

wget https://raw.githubusercontent.com/php/php-src/PHP-7.1.30/.gdbinit
wget https://launchpad.net/~ondrej/+archive/ubuntu/php/+build/18860434/+files/php7.1-fpm-dbgsym_7.1.33-14+ubuntu16.04.1+deb.sury.org+1_amd64.ddeb
sudo dpkg -i php7.1-fpm-dbgsym_7.1.33-14+ubuntu16.04.1+deb.sury.org+1_amd64.ddeb

wget https://raw.githubusercontent.com/joelbeckham/perf-parachute/master/php-backtrace.sh
chmod +x php-backtrace.sh