FROM node:12-alpine

RUN apk add --no-cache git

RYN git clone https://github.com/miscrose/todo-app

WORKDIR /todo-app

RUN yarn install --production
CMD ["node","/src/index.js"]
