FROM node:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm","start"]
docker build -t lista-gc .
$ docker run -p3333:3333 -v<path_pasta_corrente>:/usr/src/app lista-gc

