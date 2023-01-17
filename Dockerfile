FROM node:12-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Start the app
CMD ["npm","start"]
docker build -t lista-gc .
docker build -t my-express-app .
docker run -p 3000:3000 my-express-app

$ docker run -p3333:3333 -v<path_pasta_corrente>:/usr/src/app lista-gc

