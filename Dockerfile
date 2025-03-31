#setup node.js base image
FROM node:22

#setup working directory
WORKDIR /app

#copy package.json and install dependencies
COPY package*.json ./
RUN npm install

#copy all source code
COPY . .

#expose port 3000
EXPOSE 3000

#command to run app
CMD ["node", "app.js"]