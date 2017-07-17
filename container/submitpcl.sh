#!/bin/bash

# ラスタライザーの場所へ移動する。
cd /home/pr/pcl/AutoTest

# 前回の結果を削除する。
rm output/*

# pclとは別のターミナルからジョブをサブミットする。
./simprint 127.0.0.1 TestFiles/target.pcl
