# Use the official Node.js 14 image from Docker Hub
FROM node:14

# Set the working directory inside the container to /app
WORKDIR /app

# Copy all the files from your local directory to the /app directory in the container
COPY . .

# Install all the dependencies listed in package.json
RUN npm install

# Expose port 3000 for the application
EXPOSE 3000

# Start the Node.js application using the "npm start" command
CMD ["npm", "start"]

