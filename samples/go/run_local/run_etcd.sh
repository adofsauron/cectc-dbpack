#!/bin/bash

mkdir -p logs

# pkill etcd
# sleep 3s

rm default.etcd -rf

etcd 2>&1  | tee -a logs/etcd.log > logs/etcd.log &
