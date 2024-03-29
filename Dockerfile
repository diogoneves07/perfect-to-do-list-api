FROM node:alpine

WORKDIR /usr/app

COPY  package*.json ./

RUN npm install

COPY . .

RUN npm build

CMD ["npm", "run" "start:dev"]