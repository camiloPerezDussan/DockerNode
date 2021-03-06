FROM node:latest
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app
RUN npm cache verify
RUN npm cache clean --force
RUN npm install
COPY . /usr/src/app
EXPOSE 3000
CMD ["npm", "start"]