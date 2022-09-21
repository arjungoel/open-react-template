FROM node:16.17.0-alpine AS build

WORKDIR /src

COPY package.json /src/package.json
COPY package-lock.json /src/package-lock.json

RUN npm install

COPY . .

#CMD [ "npm", "run", "start" ]
RUN npm run build