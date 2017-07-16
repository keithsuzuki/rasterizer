#!/bin/bash

# pclとは別のターミナルからジョブをサブミット
cd /home/pr/pcl/AutoTest
rm output/*
./simprint 127.0.0.1 TestFiles/target.pcl
