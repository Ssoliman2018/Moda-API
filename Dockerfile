FROM node:20.15.0
ENV NODE_ENV=production
# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY /package*.json /usr/src/app/

RUN npm install --production
# If you are building your code for production
# RUN npm ci --omit=dev

# Bundle app source
COPY . /usr/src/app

EXPOSE 8080 80 443

CMD [ "node", "index.js" ]