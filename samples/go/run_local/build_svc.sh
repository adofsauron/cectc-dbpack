#!/bin/bash

echo cd ../aggregation_svc
cd ../aggregation_svc
rm aggregation_svc -rf
echo go build -o aggregation_svc .
go build -o aggregation_svc .
cd -

echo cd ../order_svc
cd ../order_svc
rm order_svc -rf
echo go build -o order_svc .
go build -o order_svc .
cd -

echo cd ../product_svc
cd ../product_svc
rm product_svc -rf
echo go build -o product_svc .
go build -o product_svc .
cd -
