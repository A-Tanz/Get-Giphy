# Use an official Node.js image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the required files to the container
COPY package*.json .
COPY /public /public
COPY /views /views
COPY index.html .

# Install the application dependencies
RUN npm install

EXPOSE 3000
# Specify the command to run when the container starts
CMD [ "npm", "app.js" ]
