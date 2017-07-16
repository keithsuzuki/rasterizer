#!/bin/bash

echo -e "\n### remove container ###"
docker rm pcl

echo -e "\n### remove image ###"
docker rmi rasterizer

echo -e "\n### docker ps -a ###"
docker ps -a

echo -e "\n### docker images ###"
docker images
