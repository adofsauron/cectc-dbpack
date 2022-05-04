#!/bin/bash

here=`pwd`

mkdir -p logs

cd ../aggregation_svc
pkill aggregation_svc
sleep 2s
echo "nohup ./aggregation_svc 2>&1 > $here/logs/aggregation_svc.log &"
nohup ./aggregation_svc 2>&1 > $here/logs/aggregation_svc.log & 
cd -

cd ../order_svc
pkill order_svc
sleep 2s
echo "nohup ./order_svc 2>&1 > $here/logs/order_svc.log &" 
nohup ./order_svc 2>&1 > $here/logs/order_svc.log & 
cd -

cd ../product_svc
pkill product_svc
sleep 2s
echo "nohup ./product_svc 2>&1 > $here/logs/product_svc.log &" 
nohup ./product_svc 2>&1 > $here/logs/product_svc.log & 
cd -



