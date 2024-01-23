FROM node:20

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Copying rest of the application to app directory
COPY . /app

# Expose the port
Expose 80

# Start the application
CMD ["npm","start"]
