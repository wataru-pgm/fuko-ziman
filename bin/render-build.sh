#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake assets:precompile # cssはsprocketsを使っているため
bundle exec rails db:migrate