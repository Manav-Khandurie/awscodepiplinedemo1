# Use an official Node.js runtime as a parent image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy app source code to the container
COPY . .

# Expose port 3001 to the outside world
EXPOSE 3000

# Run the application
CMD ["node", "app.js"]
