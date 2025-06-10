FROM n8nio/n8n:latest

USER root

# Install system dependencies
RUN apk update && \
    apk add --no-cache \
    python3 \
    py3-pip \
    ffmpeg \
    curl \
    wget \
    git

# Install Python packages
RUN python3 -m pip install --no-cache-dir --upgrade pip --break-system-packages --root-user-action=ignore && \
    python3 -m pip install --no-cache-dir --break-system-packages --root-user-action=ignore \
    yt-dlp \
    requests \
    beautifulsoup4 \
    pandas \
    numpy

# Install npm packages
RUN npm install -g \
    puppeteer \
    playwright \
    cheerio \
    axios \
    lodash \
    moment \
    uuid \
    sharp



# Return to node user
USER node
