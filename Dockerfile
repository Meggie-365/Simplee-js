FROM node:16-alpine

WORKDIR /usr/src/app
# Install app dependencies

COPY package*.json ./

RUN npm install
# Bundle app source

COPY . .

EXPOSE 3000 
CMD [ "npm", "start" ]
