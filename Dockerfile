# Start from official Nginx Alpine image
FROM nginx:alpine

# Update Alpine packages and remove cache to reduce vulnerabilities
RUN apk update && \
    apk upgrade --no-cache

# Copy your Tetris HTML
COPY tetris.html /usr/share/nginx/html/index.html

# Expose port
EXPOSE 80

# Run Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]