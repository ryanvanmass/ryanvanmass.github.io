FROM ubuntu:22.04 as build

RUN apt update
RUN apt install ruby ruby-dev -y
RUN apt install make g++ -y


RUN gem install bundler jekyll


COPY Gemfile /
COPY Gemfile.lock /
RUN bundle install

WORKDIR /mnt

 ENTRYPOINT [ "bundle", "exec", "jekyll", "serve", "-H", "0.0.0.0", "-P", "4000", "-D" ]
# ENTRYPOINT [ "/bin/bash" ]