FROM ubuntu:16.04

LABEL maintainer="Dennis Stritzke <dennis@stritzke.me>"

RUN apt-get update && \
  apt-get install -y ruby-full build-essential rubygems && \
  gem install sass --no-user-install -v 3.5.5 && \
  apt-get clean

ENTRYPOINT ["/usr/local/bin/sass"]
CMD ["-version"]