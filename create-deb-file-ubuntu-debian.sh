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
wget https://github.com/TASEmulators/desmume/archive/refs/tags/release_0_9_11.tar.gz
tar -xvf release_0_9_11.tar.gz
cd release_0_9_11/desmume
mv src desmume-0_9_11
