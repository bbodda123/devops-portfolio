# Use an official Node.js LTS image
FROM node:20-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package files first (better layer caching)
COPY package*.json ./

# Step 1 — Install dependencies
RUN npm install

# Copy the rest of the app source code
COPY . .

# Expose the port your dev server runs on (adjust if different)
EXPOSE 5173

# Step 2 — Run locally (dev mode)
CMD ["npm", "run", "dev"]
