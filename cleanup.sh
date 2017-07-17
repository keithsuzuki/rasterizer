#!/bin/bash

# 走っているコンテナpclを止め、削除する。
echo -e "\n### remove container ###"
docker stop pcl
docker rm pcl

# イメージkeithsuzuki/rasterizerを削除する。
echo -e "\n### remove image ###"
docker rmi keithsuzuki/rasterizer

# コンテナの一覧表示をする。
echo -e "\n### docker ps -a ###"
docker ps -a

# イメージの一覧表示をする。
echo -e "\n### docker images ###"
docker images
