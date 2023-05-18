FROM node:alpine
LABEL app="simple-node-application"
ENV NPM_CONFIG_LOGLEVEL warn
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
COPY . /usr/src/app/
RUN npm install --production
EXPOSE 3000
ENTRYPOINT ["npm", "start"]