# Use Node 22 LTS (supported by n8n)
FROM node:22.11.0

# Create app directory
WORKDIR /app

# Copy all files
COPY . .

# Install dependencies
RUN npm install --legacy-peer-deps

# Expose default n8n port
EXPOSE 5678

# Start n8n
CMD ["npx", "n8n", "start"]
