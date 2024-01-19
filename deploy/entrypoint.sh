#!/bin/bash
set -e
set -o errexit

bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
rm -f tmp/pids/server.pid
bundle exec rails s -p 3000 -b '0.0.0.0'

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
