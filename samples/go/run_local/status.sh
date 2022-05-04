#!/bin/bash

ps -aux | grep svc | grep -v grep

echo -e "\n"

ps -aux | grep dbpack | grep -v grep

