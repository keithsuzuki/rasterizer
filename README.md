# rasterizer
Docker build for running R rasterizer
## 使用環境
- Windows7
- [Docker Toolbox](https://www.docker.com/products/docker-toolbox)
- Docker quickstart terminal
## 使い方
### １．GithubからCloneして、Dockerfileを取得する
- Windows7に[Docker Toolbox](https://www.docker.com/products/docker-toolbox)をインストールする。
- Docker quickstart terminalを開き、下記を実施。
```
$ cd /c/devel		// c:\devel などの適当なフォルダに移動
$ git clone https://github.com/keithsuzuki/rasterizer.git
$ cd rasterizer
$ git checkout develop
```
### ２．別送付のファイルをコピーする
- pcl.zipを上記rasterizerフォルダの下のcontainerフォルダにコピーする。
- WindowsのExplorerでコピーすれば良いです。

### ３．コンテナを作成してPCLをバックグラウンドで走らせる
```
$ ./buildpcl.sh
```

### ４．ラスタライズしたいファイルをコンテナに送る
プリントしたいファイルは```target.pcl```として保存してください。
```
$ cp <somewhere/somefile> target.pcl	// 印刷するファイルをコピー
$ ./submitprintfile.sh
```

### ５．ラスタライズされたファイルを受け取る
```
$ ./getprintresult.sh
$ ls output	// 印刷結果を確認
```
プリント結果は```output```フォルダに入ります。プリントには時間がかかるので、結果のファイルが開けない場合は、上記を再度行ってください。
### 以降は、４と５を繰り返す。

### ６．クリーンアップする（コンテナとイメージの削除）
Dockerfileが更新されたときなどに実行してください。
```
$ ./cleanup.sh
```
