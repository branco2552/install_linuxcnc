#!/bin/sh

# Installing the Real Time Preetempt Kernel
# and the LinuxCNC-Uspace for Debian 10 and later

sudo apt update -y && sudo apt upgrade -y
sudo apt install -y software-properties-common
sudo apt install -y apt-add-repository
sudo apt install -y libpci-dev libmd-dev pkg-config build-essential

sudo apt-key adv --keyserver hkp://keys.gnupg.net:80 --recv-key EF1B07FEE0EE663E || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv-key 3cb9fd148f374fef
sudo apt update -y
sudo apt-add-repository 'http://buildbot.linuxcnc.org/ buster master-rtpreempt'
sudo apt-add-repository 'http://buildbot.linuxcnc.org/ stretch 2.8-rtpreempt'
sudo apt update -y

sudo apt install -y linux-image-rt-686-pae linux-image-rt-686-pae-dbg linux-headers-*-common linux-headers-*-common-rt
sudo update-grub

sudo apt-get -y install linuxcnc-uspace mesaflash