FROM node:18-slim

# Install Chromium
RUN apt-get update && apt-get install -y chromium

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install

COPY . .
CMD ["npm", "start"]
