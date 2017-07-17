#!/bin/bash

echo -e "\n### build image with name of rasterizer ###"
docker build -t keithsuzuki/rasterizer .

echo -e "\n###run container with name of pcl in background###"
docker run -d --name pcl -t -v //c/Users:/users keithsuzuki/rasterizer
