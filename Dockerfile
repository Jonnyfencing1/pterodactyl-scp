FROM ubuntu:latest

MAINTAINER Jonny C, <jonny@gearshifthosting.co.uk>

RUN apt install mono-complete \
	useradd -d /home/container -m container

USER container
ENV  USER container
ENV  HOME /home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]