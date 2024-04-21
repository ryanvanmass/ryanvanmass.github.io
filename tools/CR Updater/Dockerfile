FROM ryanvanmass/jekyll-site:latest as build

RUN apt update
RUN apt install git -y

COPY Deploy.sh /Build.sh

WORKDIR /

ENTRYPOINT [ "sh", "/Build.sh" ]
# ENTRYPOINT [ "/bin/bash" ]