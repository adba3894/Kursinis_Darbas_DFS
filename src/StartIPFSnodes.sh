#!/bin/bash
#Get credentials n Login
echo "Enter username for your opennebula cloud infrastructure"
read CUSER
echo "Enter password for your opennebula cloud infrastructure"
read -s CPASS

#Check updates
echo "Getting updates"
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install opennebula-tools -y
sudo apt-get install dos2unix


echo "Booting up an example virtual machines"
CVM_EXAMPLE=$(onetemplate instantiate 138 --user $CUSER --password $CPASS --name "IPFSnode1" --endpoint https://grid5.mif.vu.lt/cloud3/RPC2)
CVMID_EXAMPLE=$(echo $CVM_example |cut -d ' ' -f 3)

CVM_EXAMPLE=$(onetemplate instantiate 138 --user $CUSER --password $CPASS --name "IPFSnode2" --endpoint https://grid5.mif.vu.lt/cloud3/RPC2)
CVMID_EXAMPLE=$(echo $CVM_example |cut -d ' ' -f 3)

CVM_EXAMPLE=$(onetemplate instantiate 138 --user $CUSER --password $CPASS --name "IPFSnode3" --endpoint https://grid5.mif.vu.lt/cloud3/RPC2)
CVMID_EXAMPLE=$(echo $CVM_example |cut -d ' ' -f 3)

CVM_EXAMPLE=$(onetemplate instantiate 138 --user $CUSER --password $CPASS --name "IPFSnode4" --endpoint https://grid5.mif.vu.lt/cloud3/RPC2)
CVMID_EXAMPLE=$(echo $CVM_example |cut -d ' ' -f 3)

#Wait for the machine to boot up
echo "Giving 10 seconds to boot up"
sleep 10

#paleisti:
#bash test.sh
