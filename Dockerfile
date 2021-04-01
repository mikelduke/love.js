FROM node:15-alpine

HEALTHCHECK NONE

ADD ./ /love-js

WORKDIR  /love-js

RUN npm install \
    && npm link

WORKDIR /app

ENTRYPOINT [ "love-js" ]
