### STAGE 1: Build ###
FROM node:lts-alpine3.14 AS build

# set src dir
# copy package.json and package-lock.json
# run npm install
# copy remaining files (until now you only have node_modules and package.json in your stage)
# build with npm build

### STAGE 2: Run ###
FROM nginx:1.17.1-alpine

# Copy nginx.conf into /etc/nginx/nginx.conf
# Copy files from stage1 to stage2 into /usr/share/nginx/html
