#!/bin/bash
sudo apt-get update
sudo apt-get -y dist-upgrade
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
#wget https://github.com/amidevous1/desmume/archive/refs/heads/ubuntu-debian.tar.gz -O desmume_0.9.13-4.debian.tar.gz
wget https://github.com/amidevous1/desmume/archive/23de6bb7b34c5f941eaa8ec19c89eb83df414ecd.tar.gz -O desmume_0.9.13-4.debian.tar.gz
tar -xvf desmume_0.9.13-4.debian.tar.gz
rm -f desmume_0.9.13-4.debian.tar.gz
mkdir desmume-release_0_9_13/debian
#cp -R desmume-ubuntu-debian/debian/* desmume-release_0_9_13/debian/
cp -R desmume-23de6bb7b34c5f941eaa8ec19c89eb83df414ecd/debian/* desmume-release_0_9_13/debian/
#rm -rf desmume-ubuntu-debian
rm -f desmume-23de6bb7b34c5f941eaa8ec19c89eb83df414ecd
cd desmume-release_0_9_13
debuild
