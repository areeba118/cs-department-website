# Use the official lightweight Nginx image based on Alpine Linux
FROM nginx:alpine

# Copy the static website files from the local public directory into the Nginx server directory
COPY ./public /usr/share/nginx/html

# Expose port 80 to allow incoming web traffic to the container
EXPOSE 80

# Run Nginx in the foreground so the container stays active
CMD ["nginx", "-g", "daemon off;"]