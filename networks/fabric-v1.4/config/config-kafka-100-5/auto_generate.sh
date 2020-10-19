#!/bin/bash
rm -rf channel-artifacts crypto-config
rm genesis.block
mkdir channel-artifacts

cryptogen generate --config=./crypto-config.yaml

export FABRIC_CFG_PATH=$PWD
echo $FABRIC_CFG_PATH

configtxgen -profile OrdererGenesis -channelID byfn-sys-channel -outputBlock ./channel-artifacts/genesis.block

sleep 1s

configtxgen -profile ChannelConfig -channelID oslab -outputCreateChannelTx ./channel-artifacts/channel.tx

sleep 1s

configtxgen -profile ChannelConfig -channelID oslab -outputAnchorPeersUpdate ./channel-artifacts/Org1MSPanchors.tx -asOrg Org1MSP

sleep 1s

configtxgen -profile ChannelConfig -channelID oslab -outputAnchorPeersUpdate ./channel-artifacts/Org2MSPanchors.tx -asOrg Org2MSP

mv ./channel-artifacts/genesis.block ./
