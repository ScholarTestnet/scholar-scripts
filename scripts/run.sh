#!/bin/bash

mkdir -p logs;
nohup nodeos >./logs/nodeos.log 2>&1 &
echo $! > nodeos.pid
nohup ipfs daemon >./logs/ipfs.log 2>&1 &
echo $! > ipfs.pid
