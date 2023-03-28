
# FROM node:slim
# WORKDIR /work_dir
# COPY . /app
# #COPY ./package*.json ./
# RUN npm install
# EXPOSE 3000
# CMD node index.js


FROM node:14.16.0-alpine3.13

# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production


# Bundle app source
COPY . .

EXPOSE 3000

CMD [ "node", "index.js" ]






# FROM node:18
# WORKDIR /app
# COPY ./package*.json ./
# RUN npm install
# COPY . .
# EXPOSE 8000
# CMD ["npm","run","dev"]