# SCALA

FROM debian:jessie

# IMPORT PACKAGE

#COPY scala-2.12.1.deb /app/scala.deb


WORKDIR /app

RUN echo "deb http://ftp.debian.org/debian jessie-backports main" >>  /etc/apt/sources.list
RUN apt-get update -y && apt-get upgrade -y


# DEPENDENCIES

RUN apt-get install curl -y

RUN apt install -t jessie-backports openjdk-8-jre-headless ca-certificates-java -y
RUN apt-get install openjdk-8-jre -y

# DOWNLOAD SCALA

RUN curl https://downloads.lightbend.com/scala/2.12.2/scala-2.12.2.deb > scala.deb

# INSTALL

RUN dpkg -i scala.deb

# SBT

RUN apt install apt-transport-https -y
RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
RUN apt-get update -y
RUN apt-get install sbt -y

# COMMANDS

CMD scala
