# Step 1: Use the official Node.js image to build the Next.js app
FROM node:20-alpine AS builder

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app source code
COPY . .

# Build the Next.js app as a static site

CMD ["npm", "run", "dev"]