sudo apt-get install autoconf automake libtool curl make g++ unzip
git clone https://github.com/google/protobuf.git
cd protobuf
./autogen.sh
./configure
make -j4
make check
sudo make install
sudo ldconfig 