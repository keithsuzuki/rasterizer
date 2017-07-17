#!/bin/bash

# outputフォルダを削除する → 削除しなくても上書きされるので行わない
#dir=output
#if [ -e $dir ]; then
#rm output/*
#fi

# 結果をコンテナからコピーする。
docker cp pcl:/home/pr/pcl/AutoTest/output .
