# GCR-Docker-memo
Google Cloud Run, Dockerについてのメモ、便利コードなど

## Docker
### docker-compose.yml  
mysqlの環境構築をする為のdocker-compose.yml  
docker-compose up -d でバックグラウンド起動

### getMetaData.sh
Google Compute Engineのカスタムメタデータを取得するシェル  
引数にカスタムメタデータ名を渡す  
ex) sh getMetaData.sh MYSQL_DATABASE

### setEnvironments.sh  
getMetaData.shを実行し、環境変数に書き出すシェル  
~/.bashrcなどで実行し、環境変数の初期設定を行.envにも書き出すことができる
MYSQL系の環境変数を対象としているが、適宜変えたら他にも使える

### buildContainer.sh


## GCR
### deployContainer.sh
GCRへのコンテナデプロイ用シェル