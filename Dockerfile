# positively filthy image with 100s of CVEs
FROM node:14
WORKDIR /usr/src/app
# The filth
COPY package*.json ./
RUN npm install
