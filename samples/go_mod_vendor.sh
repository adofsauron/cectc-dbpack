#!/bin/bash

go env -w GOPROXY=https://goproxy.cn,direct

cd go/aggregation_svc
go mod tidy
go mod vendor
cd -

cd go/order_svc
go mod tidy
go mod vendor
cd -

cd go/product_svc
go mod tidy
go mod vendor
cd -
