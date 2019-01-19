#!/bin/bash

echo "Please enter a delay of each upload process"
read delayNumb
echo "Please enter a number of upload processes"
read loopsNo

source Conf.sh
TEST_NODE=$NODE1

$TEST_NODE "echo >> test.txt"
sumOfDur=0
  
for ((i = 1; i <= $loopsNo; i++))
do
$TEST_NODE ""'echo "some data for the file" >> test.txt'""
printf "\n"
sleep $delayNumb

start=$(date +%s.%N);
$TEST_NODE "ipfs add -w test.txt"
dur=$(echo "$(date +%s.%N) - $start" | bc)
sumOfDur=$(echo "$sumOfDur+$dur" | bc)
done

printf "\n"
printf "Sum of all upload processes:\n"
echo "$sumOfDur" | bc
printf "\n"
printf "Average upload speed of all processes:\n"
echo "scale =5; $sumOfDur/$loopsNo" | bc
$TEST_NODE "rm test.txt"
