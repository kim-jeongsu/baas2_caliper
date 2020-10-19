#!/bin/bash

TIME=`date "+%Y-%m-%d_%H:%M:%S"`
caliper benchmark run --caliper-workspace ./ --caliper-benchconfig benchmarks/scenario/smallbank/config_linear_local.yaml --caliper-networkconfig networks/fabric-v1.4/caliper/5orderer2org4peer_raft_batch_300/fabric-go-local.yaml

mv report* ./results/$1_${TIME}.html
