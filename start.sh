#!/usr/bin/env bash
echo "initialize..."
rm /usr/src/app/tmp/pids/server.pid 2> /dev/null
bundle install
echo "bundle installed"

bundle exec rake assets:precompile

rails db:create
rails db:migrate

echo "artibit server start"
rails server -b 0.0.0.0 -p 3000
