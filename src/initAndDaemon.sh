#!/bin/bash
source Conf.sh
IPFS_NODE1=$NODE1
IPFS_NODE2=$NODE2
IPFS_NODE3=$NODE3
IPFS_NODE4=$NODE4
IPFS_NODE5=$NODE5


gnome-terminal -x sh -c "$IPFS_NODE1 'ipfs init; ipfs daemon; exec bash'"
gnome-terminal -x sh -c "$IPFS_NODE2 'ipfs init; ipfs daemon; exec bash'"
gnome-terminal -x sh -c "$IPFS_NODE3 'ipfs init; ipfs daemon; exec bash'"
gnome-terminal -x sh -c "$IPFS_NODE4 'ipfs init; ipfs daemon; exec bash'"
gnome-terminal -x sh -c "$IPFS_NODE5 'ipfs init; ipfs daemon; exec bash'"
clear
echo "'ipfs init' and 'ipfs daemon' commands were successfully performed on all IPFS nodes"
