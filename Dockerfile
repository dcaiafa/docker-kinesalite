FROM node:latest
MAINTAINER Daniel Caiafa <dcaiafa [at] gmail.com>

RUN npm install -g --unsafe-perm kinesalite@1.14.0
RUN mkdir /var/kinesalite

EXPOSE 4567
VOLUME /var/kinesalite

ENTRYPOINT ["kinesalite", "--path", "/var/kinesalite"]
