FROM node:20-alpine
WORKDIR /app
RUN apk add git
ADD package.json .
RUN npm i