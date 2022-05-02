#!/bin/bash

cd go/aggregation_svc
echo go build -gcflags=all="-N -l" -o aggregation_svc .
go build -gcflags=all="-N -l" -o aggregation_svc .
cd -

cd go/order_svc
echo go build -gcflags=all="-N -l" -o order_svc .
go build -gcflags=all="-N -l" -o order_svc .
cd -

cd go/product_svc
echo go build -gcflags=all="-N -l" -o product_svc .
go build -gcflags=all="-N -l" -o product_svc .
cd -
