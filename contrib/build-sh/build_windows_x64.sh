#!/bin/sh
echo '#################################################'
echo '# Building Bluenode Core                          #'
echo '#################################################'
cd ../..
BNC_ROOT=$(pwd)
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get -y install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils autoconf
sudo apt-get -y install g++-mingw-w64-i686 mingw-w64-i686-dev g++-mingw-w64-x86-64 mingw-w64-x86-64-dev
cd depends
make HOST=x86_64-w64-mingw32 -j4
cd ..
echo 1 | sudo update-alternatives --config x86_64-w64-mingw32-gcc
echo 1 | sudo update-alternatives --config x86_64-w64-mingw32-g++
./autogen.sh
./configure --prefix=`pwd`/depends/x86_64-w64-mingw32
make
mkdir -p $BNC_ROOT/release/
cp $BNC_ROOT/src/bluenoded.exe $BNC_ROOT/release/
cp $BNC_ROOT/src/bluenode-cli.exe $BNC_ROOT/release/
cp $BNC_ROOT/src/bluenode-tx.exe $BNC_ROOT/release/
cp $BNC_ROOT/src/qt/bluenode-qt.exe $BNC_ROOT/release/
