# Use official nginx lightweight image
FROM nginx:alpine

# Remove default nginx files
RUN rm -rf /usr/share/nginx/html/*

# Copy Medinova project files into nginx web directory
COPY . /usr/share/nginx/html

# Expose web port
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]