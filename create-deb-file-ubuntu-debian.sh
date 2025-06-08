#!/bin/bash
sudo apt-get update
sudo apt-get -y dist-upgrade
sudo apt-get -y install software-properties-common
# force use debhelper version 13 for old ubuntu version (18.04,20.04) based to backports (main) 2022-06-15 package
# https://launchpad.net/ubuntu/+source/debhelper/13.6ubuntu1~bpo18.04.1
# https://launchpad.net/ubuntu/+source/debhelper/13.6ubuntu1~bpo20.04.1
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
rm -rf .git debian/.git
debuild
cd ..
sudo dpkg -i desmume_0.9.13-4_*.deb
rm -rf create-deb-file-ubuntu-debian.sh desmume-dbgsym_0.9.13-4_amd64.ddeb desmume-release_0_9_13 desmume_0.9.13-4.debian.tar.xz \
desmume_0.9.13-4.dsc desmume_0.9.13-4_amd64.build desmume_0.9.13-4_amd64.buildinfo desmume_0.9.13-4_amd64.changes \
desmume_0.9.13-4_amd64.deb desmume_0.9.13.orig.tar.gz
