FROM ruby:3.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs default-mysql-client vim
# RailsのインストールやMySQLへの接続に必要なパッケージをインストール

# RUN bundle config --global frozen 1

RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
# RUN bundle lock --add-platform x86_64-linux
RUN bundle install
ADD . /myapp
