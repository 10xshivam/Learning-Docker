# Base Image
FROM node:20.18.1-alpine3.21

WORKDIR /home/app/

COPY package*.json .
RUN npm install

COPY index.js /home/app/index.js

EXPOSE 8000

CMD [ "npm","start" ]