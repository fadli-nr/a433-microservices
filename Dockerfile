# 1. Base image Node.js v14
FROM node:14

# 2. Working directory container
WORKDIR /app

# 3. Salin seluruh source code
COPY . .

# 4. Environment variables
ENV NODE_ENV=production DB_HOST=item-db

# 5. Install dependencies & build
RUN npm install --production --unsafe-perm && npm run build

# 6. Expose port 8080
EXPOSE 8080

# 7. Running command
CMD ["npm", "start"]
