FROM node:20-alpine as builder

RUN mkdir -p /app
WORKDIR '/app'

COPY --chown=node:node ./package.json ./

RUN npm set strict-ssl false
RUN npm i
RUN npm set strict-ssl true

COPY --chown=node:node ./ ./

RUN npm run build


FROM nginx
