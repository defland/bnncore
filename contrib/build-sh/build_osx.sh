#!/bin/sh
cd ../..
BNC_ROOT=$(pwd)
echo -ne '\n' | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install autoconf automake berkeley-db4 libtool boost miniupnpc openssl pkg-config protobuf libevent qt
./autogen.sh
./configure
make
mkdir -p release
cp src/bluenoded $BNC_ROOT/release
cp src/bluenode-tx $BNC_ROOT/release
cp src/bluenode-cli $BNC_ROOT/release
cp src/qt/bluenode-qt $BNC_ROOT/release
make deploy
echo "Done. your 'Bluenode-qt.dmg' is ready"