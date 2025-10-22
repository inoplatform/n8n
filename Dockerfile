# Use Node 22 LTS (fully supported by n8n)
FROM node:22.11.0

WORKDIR /app

COPY . .

# Install dependencies
RUN npm install --legacy-peer-deps

EXPOSE 5678

CMD ["npx", "n8n", "start"]
