#!/bin/bash

mkdir logs
mkdir -p logs

cd go/aggregation_svc
pkill aggregation_svc
sleep 2s
echo nohup ./aggregation_svc > ../../logs/aggregation_svc.log & 
nohup ./aggregation_svc > ../../logs/aggregation_svc.log & 
cd -

cd go/order_svc
pkill order_svc
sleep 2s
echo nohup ./order_svc > ../../logs/order_svc.log & 
nohup ./order_svc > ../../logs/order_svc.log & 
cd -

cd go/product_svc
pkill product_svc
sleep 2s
echo nohup ./product_svc > ../../logs/product_svc.log & 
nohup ./product_svc > ../../logs/product_svc.log & 
cd -



