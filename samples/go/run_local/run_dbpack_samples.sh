#!/bin/bash

here=`pwd`

mkdir -p logs

# pkill dbpack
# sleep 3s

echo "nohup ../../../dist/dbpack start --config ../config1.yaml 2>&1 | tee -a  logs/config1.log > logs/config1.log &"
nohup ../../../dist/dbpack start --config ../config1.yaml 2>&1 | tee -a  logs/config1.log > logs/config1.log &

echo "nohup ../../../dist/dbpack start --config ../config2.yaml 2>&1 | tee -a  logs/config2.log > logs/config2.log &"
nohup ../../../dist/dbpack start --config ../config2.yaml 2>&1 | tee -a  logs/config2.log > logs/config2.log &

echo "nohup ../../../dist/dbpack start --config ../config3.yaml 2>&1 | tee -a  logs/config3.log > logs/config3.log &"
nohup ../../../dist/dbpack start --config ../config3.yaml 2>&1 | tee -a  logs/config3.log > logs/config3.log &

