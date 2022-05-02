#!/bin/bash

mkdir -p logs

pkill dbpack
sleep 3s

../dist/dbpack start --config ../samples/go/config1.yaml 2>&1  | tee -a  ./logs/config1.log > ./logs/config1.log &

../dist/dbpack start --config ../samples/go/config2.yaml 2>&1  | tee -a  ./logs/config2.log > ./logs/config2.log &

../dist/dbpack start --config ../samples/go/config3.yaml 2>&1  | tee -a  ./logs/config3.log > ./logs/config3.log &

