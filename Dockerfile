# Use lightweight Python Alpine image
FROM python:3.12-alpine

# Copy your Tetris HTML file
COPY tetris.html /app/index.html
WORKDIR /app

# Expose port 80
EXPOSE 80

# Run a simple HTTP server
CMD ["python3", "-m", "http.server", "80"]