#!/bin/bash

# 印刷対象のPCLファイルをコンテナにコピーする。
echo -e "copy target.pcl into container"
docker cp target.pcl pcl:/home/pr/pcl/AutoTest/TestFiles/target.pcl

# コンテナで印刷実行させる。
echo -e "\nrasterize it at container"
docker exec -it pcl /tmp/submitpcl.sh
