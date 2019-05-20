#!/bin/bash

#create subnets 

if ! [ $(grep /($nw)/) | $(az network vnet list -g $rg) ]; then
echo "this network doesnt exist"
exit 1
fi

if [ $(grep /($sn)/) | $(az network vnet subnet list -g $rg --vnet-name $nw) ]; then
echo "this subnet already exists in this network"
exit 1
fi

az network vnet subnet create -n $sn -g $rg --vnet-name $nw --address-prefixes $ap 