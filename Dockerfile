# Base Image
FROM node:20.18.1-alpine3.21

WORKDIR /home/app/

COPY package-lock.json package-lock.json
COPY package.json package.json
RUN npm install

COPY index.js /home/app/index.js

CMD [ "npm","start" ]