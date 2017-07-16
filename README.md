# rasterizer
Docker build for running R rasterizer
## 使用環境
- Windows7
- [Docker Toolbox](https://www.docker.com/products/docker-toolbox)
- Docker quickstart terminal
## 使い方
### １．GithubからCloneして、Dockerfileを取得
Docker quickstart terminalを開き、下記を実施。
```
$ cd /c/devel		// 適当なフォルダに移動
$ git clone https://github.com/keithsuzuki/rasterizer.git
$ cd rasterizer
$ git checkout develop
```
### ２．別送付のファイルをコピーする
　pcl.zipを上記rasterizerの下のcontainerフォルダにコピーする。

### ３．コンテナを作成してPCLをバックグラウンドで走らせる
```
$ ./buildpcl.sh
```

### ４．プリントしたいファイル（```target.pcl```として保存しておく）をコンテナに送り、ラスタライズする
```
$ ./submitprintfile.sh
```

### ５．ラスタライズされたファイルを受け取る（結果は、```output```フォルダに入ってくる）
```
$ ./getprintresult.sh
```
### 以降は、４と５を繰り返す。

### ６．クリーンアップ（コンテナとイメージの削除）
```
$ ./cleanup.sh
```
