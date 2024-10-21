# Use a Node.js base image
FROM node:18

# Set up working directory
WORKDIR /app

# Copy package.json and package-lock.json (if applicable)
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy all Strapi project files into the container
COPY . .

# Build the admin panel
RUN npm run build

# Expose the Strapi port
EXPOSE 1337

# Start the Strapi server
CMD ["npm", "start"]
