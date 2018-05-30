#!/bin/bash

echo install dependencies
if [ -d /opt/fit2cloud-demo ];then
    echo /opt/fit2cloud-demo exists
    rm -rf /opt/fit2cloud-demo/*
    echo clean /opt/fit2cloud-demo
else
    mkdir -p /opt/fit2cloud-demo
fi
echo install dependencies done!
