# Use an official Nginx image as a base image
FROM nginx:alpine

# Copy the HTML files into the Nginx server's public directory
COPY ./html-site /usr/share/nginx/html

# Expose port 80 so the container can serve the page
EXPOSE 80

# Nginx will automatically start and serve the HTML page on port 80
CMD ["nginx", "-g", "daemon off;"]