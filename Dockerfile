# Pull base image.
FROM node:slim

MAINTAINER desero <desero@desero.com>

# Install git
RUN apt-get update && apt-get install -y git

# Global install gulp and bower
RUN npm set progress=false && \
    npm install --global --progress=false gulp bower node-sass && \
    echo '{ "allow_root": true }' > /root/.bowerrc

# Binary may be called nodejs instead of node
RUN ln -s /usr/bin/nodejs /usr/bin/node

# Define working directory.
WORKDIR /workspace
