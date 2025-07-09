# Use official Nginx image
FROM nginx:alpine

# Copy custom nginx config
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy website files to nginx folder
COPY public/ /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
