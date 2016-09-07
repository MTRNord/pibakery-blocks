#!/bin/bash

DEVICE=$1
ADDRESS=$2
NETMASK=$3
GATEWAY=$3

mv /etc/network/interfaces /etc/network/interfaces_bak
touch /etc/network/interfaces
echo "
auto lo $DEVICE
iface lo inet loopback
iface $DEVICE inet static
        address $ADDRESS
        netmask $NETMASK
        gateway $GATEWAY" >> /etc/network/interfaces
