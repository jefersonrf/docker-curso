FROM node:11.6.0-alpine

WORKDIR /usr/src/app

MAINTAINER Jeferson

RUN apk update
RUN npm install express

ENV environment=production

ADD app.js .

EXPOSE 3000

ENTRYPOINT [ "node", "app.js" ]