# Specify a base image
FROM alpine
# Alternative is to use node:alpine
# FROM node:alpine 

# Install some dependencies
# Install node JS. Alternative is to use node:alpine Base image. Then no need to use apk to install NodeJS.
RUN apk add --update npm
# Set woring directory
WORKDIR /usr/app/myapp
# Copy Node program file
COPY ./package.json ./
# Run npm install to install dependencies specified in package.json
RUN npm install
# Copy app file after package.json to avoid re-executing npm install if package.json is not changed. 
# Note that Docker detects if there is any changes on copied file and re-run all statements after it.
COPY ./index.js ./

# Default command
CMD ["npm", "start"]