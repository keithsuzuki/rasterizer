# rasterizer
Docker build for running R rasterizer
## 使用環境
- Windows7
- [Docker Toolbox](https://www.docker.com/products/docker-toolbox)
- Docker quickstart terminal
## 使い方
１．GithubからCloneして、Dockerfileを取得
```
$ git clone https://github.com/keithsuzuki/rasterizer.git
$ git checkout develop
```

２．スクリプト起動（Docker build, Docker run)
```
$ ./buildpcl.sh
```

３．ラスタライザー起動
```
# cd /home/pr/pcl/AutoTest
# ./pcl
```