# syntax=docker/dockerfile:1
 FROM node:12-alpine
 RUN apk add --no-cache python3 g++ make zlib && apk -i upgrade
 WORKDIR /app
 COPY . .
 RUN yarn install --production
 CMD ["node", "src/index.js"]
