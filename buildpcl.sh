#!/bin/bash

echo -e "\n### build image with name of rasterizer ###"
docker build -t keithsuzuki/rasterizer .

echo -e "\n###run container with name of pcl ###"
docker run --name pcl -it keithsuzuki/rasterizer bash
