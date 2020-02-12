FROM node:10
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# when available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# Run npm ci --only=production
# Bundle app source
COPY . .
EXPOSE 8080
CMD [ "node", "server.js" ]
