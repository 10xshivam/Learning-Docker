# Base Image
FROM node:20.17.0-alpine3.19

WORKDIR /home/app/

# installs the curl utility tool in our container
RUN apk add --no-cache curl

COPY package*.json .
RUN npm install

COPY index.js /home/app/index.js

COPY Dockerfile Dockerfile

ENV PORT=8000
EXPOSE 8000

HEALTHCHECK --interval=5s --timeout=5s --start-period=5s --retries=3 CMD curl -f http://localhost:${PORT}/health || exit 1

CMD [ "npm","start" ]