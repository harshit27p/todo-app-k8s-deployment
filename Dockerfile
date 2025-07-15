# Use the official Node.js image
FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Copy app files
COPY app/ .

# Expose the app port
EXPOSE 3000

# Run the web app using a basic HTTP server
CMD [ "npx", "http-server", "-p", "3000" ]
