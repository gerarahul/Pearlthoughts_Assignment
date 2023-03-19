FROM node:14-alpine

WORKDIR /app

COPY . ./
RUN npm install

WORKDIR /app/examples/hello-world

EXPOSE 3000

CMD [ "node", "index.js" ]
