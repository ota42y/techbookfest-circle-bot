FROM node:10

ADD src /app/src
ADD package.json yarn.lock /app/

WORKDIR /app

RUN yarn

ENTRYPOINT ["node", "src/index.js"]
