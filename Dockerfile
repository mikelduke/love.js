FROM node:15-alpine

HEALTHCHECK NONE

ADD ./ /love-js

WORKDIR  /love-js

RUN npm install \
    && npm link \
    && apk update \
    && apk add zip

WORKDIR /app

ENTRYPOINT [ "/love-js/build-action.sh" ]
