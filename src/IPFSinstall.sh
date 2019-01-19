#!/bin/bash

#DEMESIO! Pries paleidziant skripta privaloma Conf.sh faile nustatyti IP adresus virtualiom masinom
#TAIP pat prasom nustatyti "root" vartotojo teises kiekvienoje is virtualiu masinu

source Conf.sh
IPFS_NODE1=$NODE1
IPFS_NODE2=$NODE2
IPFS_NODE3=$NODE3
IPFS_NODE4=$NODE4
IPFS_NODE5=$NODE5

# IPFSnode1
#ssh 10.0.1.118 cat /etc/passwd
$IPFS_NODE1 "apt-get update;
apt-get install golang-go -y;
wget https://dist.ipfs.io/go-ipfs/v0.4.10/go-ipfs_v0.4.10_linux-386.tar.gz;
tar xvfz go-ipfs_v0.4.10_linux-386.tar.gz;
mv go-ipfs/ipfs /usr/local/bin/ipfs"
echo "IPFS Successfully installed on IPFSnode1"

# IPFSnode2
#ssh 10.0.1.120 cat /etc/passwd
$IPFS_NODE2 "apt-get update;
apt-get install golang-go -y;
wget https://dist.ipfs.io/go-ipfs/v0.4.10/go-ipfs_v0.4.10_linux-386.tar.gz;
tar xvfz go-ipfs_v0.4.10_linux-386.tar.gz;
mv go-ipfs/ipfs /usr/local/bin/ipfs"
echo "IPFS Successfully installed on IPFSnode2"

# IPFSnode3
#ssh 10.0.1.122 cat /etc/passwd
$IPFS_NODE3 "apt-get update;
apt-get install golang-go -y;
wget https://dist.ipfs.io/go-ipfs/v0.4.10/go-ipfs_v0.4.10_linux-386.tar.gz;
tar xvfz go-ipfs_v0.4.10_linux-386.tar.gz;
mv go-ipfs/ipfs /usr/local/bin/ipfs"
echo "IPFS Successfully installed on IPFSnode3"

# IPFSnode4
#ssh 10.0.1.123 cat /etc/passwd
$IPFS_NODE4 "apt-get update;
apt-get install golang-go -y;
wget https://dist.ipfs.io/go-ipfs/v0.4.10/go-ipfs_v0.4.10_linux-386.tar.gz;
tar xvfz go-ipfs_v0.4.10_linux-386.tar.gz;
mv go-ipfs/ipfs /usr/local/bin/ipfs"
echo "IPFS Successfully installed on IPFSnode4"

# IPFSnode4
#ssh 10.0.1.123 cat /etc/passwd
$IPFS_NODE5 "apt-get update;
apt-get install golang-go -y;
wget https://dist.ipfs.io/go-ipfs/v0.4.10/go-ipfs_v0.4.10_linux-386.tar.gz;
tar xvfz go-ipfs_v0.4.10_linux-386.tar.gz;
mv go-ipfs/ipfs /usr/local/bin/ipfs"
echo "IPFS Successfully installed on IPFSnode5"

