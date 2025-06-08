#!/bin/bash
sudo apt-get update
sudo apt-get -y dist-upgrade
sudo apt-get -y install software-properties-common
# force use debhelper version 13 for old ubuntu version (18.04,20.04)
sudo add-apt-repository ppa:andykimpe/debhelper-13 -y
sudo apt update
sudo apt-get -y install build-essential gettext intltool debhelper cdbs lintian fakeroot devscripts dh-make dput git tar xz-utils gzip wget
sudo apt-get -y install debhelper
sudo apt-get -y install meson
sudo apt-get -y install cmake
sudo apt-get -y install libglib2.0-dev
sudo apt-get -y install libsdl2-dev
sudo apt-get -y install libpcap-dev
sudo apt-get -y install libopenal-dev
sudo apt-get -y install libsoundtouch-dev
sudo apt-get -y install libtinyxml-dev
rm -f desmume*
wget https://github.com/TASEmulators/desmume/archive/refs/tags/release_0_9_13.tar.gz -O desmume_0.9.13.orig.tar.gz
tar -xvf desmume_0.9.13.orig.tar.gz
cd desmume-release_0_9_13
git clone -b ubuntu-debian https://github.com/amidevous1/desmume.git debian
rm -rf .git
debuild
