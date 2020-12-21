FROM node:15.3.0

WORKDIR /container
COPY package*.json ./
RUN npm i

COPY . .

EXPOSE 2000

RUN chown -R node:node /container
USER node
CMD ["npm", "start"]
