FROM ubuntu:22.04 AS build

RUN apt update
RUN apt install ruby ruby-dev -y
RUN apt install make g++ -y
Run apt install git -y


RUN gem install bundler jekyll

COPY update.sh /
COPY Gemfile /
COPY Gemfile.lock /
RUN bundle install

RUN mkdir /target


ENTRYPOINT [ "sh", "update.sh" ]
