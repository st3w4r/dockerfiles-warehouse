# SCALA

FROM debian:jessie

# IMPORT PACKAGE

COPY scala-2.12.1.deb /app/scala.deb

WORKDIR /app

RUN echo "deb http://ftp.debian.org/debian jessie-backports main" >>  /etc/apt/sources.list
RUN apt-get update -y && apt-get upgrade -y

# DEPENDENCIES

RUN apt-get install openjdk-8-jre -y

# INSTALL

RUN dpkg -i scala.deb

# COMMANDS

CMD scala
