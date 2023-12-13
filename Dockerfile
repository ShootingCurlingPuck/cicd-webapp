# Use the official Node.js 18 image as the base image
FROM node:18

# Create a working directory for the application
WORKDIR /app

# Copy the application code into the container
COPY . .

# Install application dependencies using yarn
RUN yarn install --frozen-lockfile

# Expose port 3000 for the application
EXPOSE 3000

CMD ["yarn", "start"]
