#!/bin/bash

caliper benchmark run --caliper-workspace ./ --caliper-benchconfig benchmarks/scenario/smallbank/config_linear_local.yaml --caliper-networkconfig networks/fabric-v1.4/caliper/3orderer2org5peer_kafka_batch_100/fabric-go.yaml
