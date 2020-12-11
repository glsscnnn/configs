#!/bin/sh

git clone https://github.com/dylanaraps/pfetch
cd pfetch
mv ./pfetch /bin/pfetch
cd .. && rm -r pfetch

git clone https://github.com/abishekvashok/cmatrix
cd cmatrix
mkdir build
cd build
cmake ..
make
mv ./cmatrix /bin/cmatrix
cd ../../ && rm -r cmatrix
