# or use ruby:latest
FROM ruby:3.2.2

RUN apt-get update; apt-get install -y \
    ruby-full \
    build-essential \
    zlib1g-dev

RUN gem install \
    jekyll \
    bundler

COPY Gemfile .

RUN bundle