# world_db

## 手順

### dockerfile から image を作成(ビルド)

```shell
docker build -t world_db_mysql_8.0 .
```

### image を起動

```shell
docker run --name world_db --rm -d -p 3306:3306 world_db_mysql_8.0
```

docker run --name <コンテナ名> --rm -d -p <ホスト側ポート>:<コンテナ側ポート> <イメージ名>

### コンテナに入る

```shell
docker exec -it world_db bash
```

### mysql を起動

```shell
mysql -u root -p
```

```mysql
show databases;
```

```mysql
use world;
```

```mysql
show tables;
```

```mysql
select * from city;
```

## docker コンテナを確認

```shell
docker ps
```

## docker コンテナを止める

```shell
docker stop world_db
```