FROM node:14.4-alpine3.10

WORKDIR /container

RUN mkdir -p /container/node_modules && chown -R node:node /container

COPY package*.json ./

USER node

RUN npm i

COPY --chown=node:node . .

EXPOSE 2000

CMD ["npm", "start"]
