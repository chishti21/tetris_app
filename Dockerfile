# Use lightweight web server
FROM nginx:alpine

# Copy your HTML file into nginx default folder
COPY tetris.html /usr/share/nginx/html/index.html

# Expose port
EXPOSE 80