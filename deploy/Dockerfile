FROM ruby:3.1.2
ENV APP_ROOT /myapp
RUN mkdir $APP_ROOT
WORKDIR $APP_ROOT
COPY deploy/staging/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
COPY Gemfile $APP_ROOT/Gemfile
COPY Gemfile.lock $APP_ROOT/Gemfile.lock

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs vim
COPY . /myapp
ENTRYPOINT [ "entrypoint.sh" ]

EXPOSE 3000
