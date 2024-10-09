# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

```ruby on rails
$ docker compose exec web bash
## サーバー起動
$ bundle exec rails s -p 3000 -b '0.0.0.0'

## マイグレーション
$ rails db:create
$ rails db:migrate
```

```mysql
$ docker compose exec mysql bash
$ mysql -u myuser -h 192.168.0.10 -p
# 対話で.envの{MYSQL_PASSWORD}を入力する
```
