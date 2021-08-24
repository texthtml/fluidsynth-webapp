FROM node:16.7-alpine3.14

WORKDIR /app

ADD package.json yarn.lock /app/

RUN yarn install --production

ADD . /app/

ENTRYPOINT [ "yarn", "start" ]
