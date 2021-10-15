#!/bin/bash -l

echo "Start Build Opensbi-based Penglai Monitor"
echo "Entering github work directory"
# download Image from storage server.
wget -c https://ipads.se.sjtu.edu.cn:1313/f/bc1d7c7e958642cfb1db/?dl=1 -O /Image --no-check-certificate

cd /github/workspace
mkdir build
CROSS_COMPILE=riscv64-unknown-linux-gnu- make O=build PLATFORM=generic FW_PAYLOAD_PATH=/Image
