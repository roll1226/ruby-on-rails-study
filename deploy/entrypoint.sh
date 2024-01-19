#!/bin/bash
set -e
set -o errexit

bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
