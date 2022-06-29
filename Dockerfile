# FROM node
# WORKDIR /usr/src/app
# COPY package*.json app.js ./
# RUN npm install
# EXPOSE 3000
# CMD ["node", "app.js"]

FROM ubuntu:18.10
LABEL maintainer="egidio.docile@linuxconfig.org"

RUN apt-get update && apt-get -y install apache2
EXPOSE 80

