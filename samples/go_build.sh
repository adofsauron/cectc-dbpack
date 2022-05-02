#!/bin/bash

cd go/aggregation_svc
rm aggregation_svc -rf
echo go build -gcflags=all="-N -l" -o aggregation_svc .
go build -gcflags=all="-N -l" -o aggregation_svc .
cd -

cd go/order_svc
rm order_svc -rf
echo go build -gcflags=all="-N -l" -o order_svc .
go build -gcflags=all="-N -l" -o order_svc .
cd -

cd go/product_svc
rm product_svc -rf
echo go build -gcflags=all="-N -l" -o product_svc .
go build -gcflags=all="-N -l" -o product_svc .
cd -
