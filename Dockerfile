# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install the app dependencies
RUN npm install --legacy-peer-deps

# Copy the rest of the application code
COPY . .

# Build the NestJS app
RUN npm run build

# Expose the port that your app will run on
EXPOSE 3000

# Define the command to start the app
CMD ["npm", "run", "start:prod"]
