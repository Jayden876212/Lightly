#! /bin/sh

# Make sure to check /etc/portage/sets/theming for KF5 support

# Create build directory
mkdir build
cd build

# Create build environment
cmake -DWITH_DECORATIONS=OFF -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF ..

# Build
make

# Install
sudo make install
