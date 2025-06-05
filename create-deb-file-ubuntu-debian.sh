#!/bin/bash
sudo apt-get update
sudo apt-get -y dist-upgrade
sudo apt-get -y install build-essential gettext intltool debhelper cdbs lintian fakeroot devscripts dh-make dput git tar xz-utils gzip
sudo apt-get -y install libsdl2-dev
sudo apt-get -y install libpcap-dev
sudo apt-get -y install libgtk2.0-dev
sudo apt-get -y install libgtk-3-dev
sudo apt-get -y install libsoundtouch-dev
sudo apt-get -y install libagg-dev
sudo apt-get -y install libopenal-dev
sudo apt-get -y install libgl-dev
sudo apt-get -y install libgles2-mesa-dev
sudo apt-get -y install libgles-dev
sudo apt-get -y install libgl1-mesa-dev libgl1-mesa-dri libglx-mesa0 libglx0
sudo apt-get -y install libglx-dev
sudo apt-get -y install libegl-mesa0 libegl1 libegl1-mesa-dev
libegl-dev
wget https://github.com/TASEmulators/desmume/archive/refs/tags/release_0_9_11.tar.gz
tar -xvf release_0_9_11.tar.gz
cd release_0_9_11/desmume
mv src desmume-0_9_11
