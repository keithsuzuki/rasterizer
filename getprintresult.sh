#!/bin/bash

# 結果を戻す
rm output/*
docker cp pcl:/home/pr/pcl/AutoTest/output .
