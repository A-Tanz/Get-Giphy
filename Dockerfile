# Use an official Node.js image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the required files to the container
COPY package*.json ./ 
COPY /public /app/public
COPY /views /app/views
COPY index.html .
COPY app.js .

# Install the application dependencies
RUN npm install --no-cache

EXPOSE 3000
# Specify the command to run when the container starts
CMD [ "node", "app.js" ]
