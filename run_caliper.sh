#/bin/bash

array=(300)
for value in "${array[@]}"; do
    test=3orderer2org4peer_raft_batch_300
    test=3orderer2org4peer_raft_batch_${value}
    echo ----------------------------------------------------------------------------------
    echo 					$test						
    echo ----------------------------------------------------------------------------------
    caliper benchmark run --caliper-workspace ./ --caliper-benchconfig benchmarks/scenario/smallbank/config_linear_raft.yaml --caliper-networkconfig networks/fabric-v1.4/caliper/${test}/fabric-go.yaml
    mv report* ./results/191127_scalabiltiy/scale_${value}.html
done;

