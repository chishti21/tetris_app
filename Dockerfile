# Use Debian-based Nginx for better compatibility
FROM nginx:stable

# Copy your Tetris HTML file into the default Nginx web root
COPY tetris.html /usr/share/nginx/html/index.html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]