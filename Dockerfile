FROM ruby:latest

ENV LANG C.UTF-8

ARG VERSION=0.7.1

RUN apt-get update -qq && apt-get install -y apt-utils build-essential libpq-dev software-properties-common

RUN gem install mailcatcher -v $VERSION

EXPOSE 1025 1080

ENTRYPOINT ["mailcatcher", "--foreground"]

CMD ["--ip", "0.0.0.0"]