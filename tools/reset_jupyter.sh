#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

if [ $# -ne 2 ]; then
    echo "Usage ./reset_jupyter port servername"
    exit 1
fi

pid=$(lsof -i :$1 | grep IPv6 | grep -o -E '[0-9]+' | head -1 | sed -e 's/^0\+//')
kill -9 $pid
echo "ssh -N -f -L localhost:8889:localhost:$1 $2"
