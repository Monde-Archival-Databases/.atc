# Basic Dockerfile for a generic Linux application
FROM ubuntu:22.04

# Install common dependencies (customize as needed)
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy all project files
COPY . /app

# Expose a default port (customize as needed)
EXPOSE 8080

# Default command (customize as needed)
CMD ["bash"]