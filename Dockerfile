# Use Debian-based Nginx for stability
FROM nginx:stable

# Disable AIO and thread pools to prevent io_setup() errors
RUN sed -i 's|use epoll;|use epoll; aio off;|' /etc/nginx/nginx.conf

# Copy your Tetris HTML
COPY tetris.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]