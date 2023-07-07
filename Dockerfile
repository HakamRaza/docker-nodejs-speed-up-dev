FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json ./
COPY yarn.lock ./
RUN yarn

# Copy in the source code
COPY . .

# Use root user
USER node

# Expose port
EXPOSE 3000

# Run the app
CMD ["node", "server.js"]