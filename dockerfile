# Use a base image
FROM node:18

# Install git
RUN apt-get update && apt-get install -y git

# Set working directory
WORKDIR /app

# Clone the Git repository
RUN git clone https://github.com/masonicGIT/pacman.git .

# Install dependencies
RUN npm install
RUN npm install next
RUN npm run build


# Expose the application port
EXPOSE 3000

# Start the application
CMD ["npm", "run", "dev"]
