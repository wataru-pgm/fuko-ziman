#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
yarn build # jsファイルをesbuildでバンドルしているため
bundle exec rake assets:precompile # cssはsprocketsを使っているため
undle exec rails db:migrate