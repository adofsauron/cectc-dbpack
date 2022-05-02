#!/bin/bash

ret=`curl -X POST http://localhost:13000/v1/order/create`

echo $ret

