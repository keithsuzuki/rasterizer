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

２．コンテナを作成してPCLをバックグラウンドで走らせる
```
$ ./buildpcl.sh
```

３．プリントしたファイルをコンテナに送り、ラスタライズする
```
$ ./submitprintfile
```
※プリントしたいファイルは```target.pcl```として保存すること。

４．ラスタライズされたファイルを受け取る
```
$ ./getprintresult
```
※結果は、outputフォルダに入ってくる。

以降は、３と４を繰り返す。

５．クリーンアップ
```
$ ./cleanup.sh
```
