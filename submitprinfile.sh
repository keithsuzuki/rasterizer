#!/bin/bash

# ファイルをコンテナにコピー
echo -e "copy target.pcl into container"
docker cp target.pcl pcl:/home/pr/pcl/AutoTest/TestFiles/target.pcl

# コンテナで実行
echo -e "\nrasterize it at container"
docker exec -it pcl /tmp/submitpcl.sh
