FROM n8nio/n8n:latest

USER root

# Install system dependencies
RUN apt-get update && \
    apt-get install -y \
    python3 \
    python3-pip \
    ffmpeg \
    curl \
    wget \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Python packages
RUN python3 -m pip install --no-cache-dir --upgrade pip && \
    python3 -m pip install --no-cache-dir \
    yt-dlp \
    requests \
    beautifulsoup4 \
    pandas \
    numpy

# Add any other tools you might need
# RUN npm install -g some-package

# Return to node user
USER node
