#!/bin/bash

hn=`hostname`
n=${hn:1}
kn=`expr $n - 1`
pids=`docker inspect --format '{{.State.Pid}}' kafka$kn`
pidstat -C peer 1 100 > results/$hn.txt &

ni=`cat /etc/network/interfaces | grep ens | sed -n '1p' `
a=($ni)
vnstat -l -i ${a[1]} -tr 60 > results/$hn-net.txt &
