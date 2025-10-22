# Use Node 22 LTS (supported by n8n)
FROM node:22.11.0

WORKDIR /app

COPY . .

# Install pnpm (n8n uses it internally)
RUN npm install -g pnpm

# Install dependencies using pnpm
RUN pnpm install --recursive --frozen-lockfile --ignore-scripts

EXPOSE 5678

CMD ["npx", "n8n", "start"]
