# this tells Docker what is the base image you want to use for project
# node is the official repo for the Node.js project and :12 is to use latest
# update of Node.js version 12
from node:12

# This tells Docker what folder you want to work in
# this will be where we put the Node.js code
WORKDIR /usr/src/app

# Copy over the Node.js dependencies, this will install the correct software versions
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available
COPY package*.json ./

# run a command line program.  Here we use Node.js's package manager to install
# dependencies from the package.json file
RUN npm install

# Copy all the other files over (mainly to get server.js)
COPY . .

# punch a hole in container at port 8080.  Everything not exposed is hidden to protect container
EXPOSE 8080

# this is the software that the container will run when it is booted up.
# It takes each string and builds a command line out of so it will run: node server.js
CMD [ "node", "server.js" ]
