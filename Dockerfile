FROM node:18

# Sets nodeJs to production mode
ENV NODE_ENV=production

# Create app directory
WORKDIR /usr/src/app

# Copy package + package-lock
COPY package*.json ./

RUN npm ci --omit=dev

COPY ./src .

EXPOSE 8080

CMD [ "node", "server.js" ]
