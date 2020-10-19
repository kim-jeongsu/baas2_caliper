#!/bin/bash

caliper benchmark run --caliper-workspace ./ --caliper-benchconfig benchmarks/scenario/smallbank/config_linear_metheus.yaml --caliper-networkconfig networks/fabric-v1.4/caliper/3orderer2org4peer_raft_batch_300/fabric-go-local.yaml
