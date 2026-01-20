FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app source
COPY . .

# React dev server port
ENV PORT=80
ENV HOST=0.0.0.0

EXPOSE 80

# Start the app
CMD ["npm", "start"]
