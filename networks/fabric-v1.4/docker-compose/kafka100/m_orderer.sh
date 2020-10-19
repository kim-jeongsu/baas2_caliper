#!/bin/bash

hn=`hostname`

ni=`cat /etc/network/interfaces | grep ens | sed -n '1p' `
a=($ni)
vnstat -l -i ${a[1]} -tr 60 > results/$hn-net.txt &

pidstat -C orderer 1 100 > results/$hn.txt &
