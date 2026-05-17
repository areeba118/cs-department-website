# Use the official lightweight Nginx web server image
FROM nginx:alpine

# Copy your public folder directory contents straight into Nginx's HTML deployment directory
COPY ./public /usr/share/nginx/html

# Expose port 80 to route incoming web traffic
EXPOSE 80

# Start the Nginx web server process in the foreground
CMD ["nginx", "-g", "daemon off;"]