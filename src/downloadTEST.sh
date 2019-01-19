#!/bin/bash

sleep 2 #ensure that all nodes are initialized and daemoned
echo "Please enter a delay of every download process"
read delay

source Conf.sh
IPFS_NODE1=$NODE1
IPFS_NODE2=$NODE2
IPFS_NODE3=$NODE3
IPFS_NODE4=$NODE4
IPFS_NODE5=$NODE5

#QmR7GSQM93Cx5eAg6a6yRzNde1FQv7uL6X1o4k7zrJa3LX

startIPFS1=$(date +%s.%N);
$IPFS_NODE1 "ipfs get QmR7GSQM93Cx5eAg6a6yRzNde1FQv7uL6X1o4k7zrJa3LX"
durIPFS1=$(echo "$(date +%s.%N) - $startIPFS1" | bc);
printf "\n Download time of IPFS_NODE1: %s seconds\n" $durIPFS1
sleep $delay

startIPFS2=$(date +%s.%N);
$IPFS_NODE2 "ipfs get QmR7GSQM93Cx5eAg6a6yRzNde1FQv7uL6X1o4k7zrJa3LX"
durIPFS2=$(echo "$(date +%s.%N) - $startIPFS2" | bc);
printf "\n Download time of IPFS_NODE2: %s seconds\n" $durIPFS2
sleep $delay

startIPFS3=$(date +%s.%N);
$IPFS_NODE3 "ipfs get QmR7GSQM93Cx5eAg6a6yRzNde1FQv7uL6X1o4k7zrJa3LX"
durIPFS3=$(echo "$(date +%s.%N) - $startIPFS3" | bc);
printf "\n Download time of IPFS_NODE3: %s seconds\n" $durIPFS3
sleep $delay

startIPFS4=$(date +%s.%N);
$IPFS_NODE4 "ipfs get QmR7GSQM93Cx5eAg6a6yRzNde1FQv7uL6X1o4k7zrJa3LX"
durIPFS4=$(echo "$(date +%s.%N) - $startIPFS4" | bc);
printf "\n Download time of IPFS_NODE4: %s seconds\n" $durIPFS4
sleep $delay

startIPFS5=$(date +%s.%N);
$IPFS_NODE5 "ipfs get QmR7GSQM93Cx5eAg6a6yRzNde1FQv7uL6X1o4k7zrJa3LX"
durIPFS5=$(echo "$(date +%s.%N) - $startIPFS5" | bc);
printf "\n Download time of IPFS_NODE5: %s seconds\n" $durIPFS5

#208.44 - file size

echo "Average download speed of all download processes in kb/s:"
echo "scale=5; ((208.44/$durIPFS1+208.44/$durIPFS2+208.44/$durIPFS3+208.44/$durIPFS4+208.44/$durIPFS5)/5)"| bc
