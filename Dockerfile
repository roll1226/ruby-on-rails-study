FROM ruby:3.1.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs vim
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install \
  bundle exec rails assets:precompile \
  bundle exec rails assets:clean \
  bundle exec rails db:migrate
ADD . /myapp
