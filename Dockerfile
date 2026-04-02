# Start from official Nginx Alpine image
FROM nginx:alpine

# Update Alpine packages and remove cache to reduce vulnerabilities
RUN apk update && \
    apk upgrade --no-cache

# Disable AIO to prevent io_setup() errors on Oracle VM
RUN sed -i 's|use epoll;|use epoll; aio off;|' /etc/nginx/nginx.conf

# Copy your Tetris HTML
COPY tetris.html /usr/share/nginx/html/index.html

# Expose port
EXPOSE 80

# Run Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]