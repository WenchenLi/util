#!/usr/bin/env bash
# ubuntu

#for ta-lib
sudo apt-get install python3-dev
wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz
tar -xvzf ta-lib-0.4.0-src.tar.gz
cd ta-lib
./configure --prefix=/usr
make
sudo make install
rm ta-lib-0.4.0-src.tar.gz
#zipline
sudo pip install zipline
# prepare quantopian-quandl databundle
zipline ingest -b quantopian-quandl