# Custom n8n Docker Setup

This repository contains a customized n8n Docker setup with additional tools for enhanced automation capabilities.

## Features

This custom n8n image extends the official n8n Docker image with:

### System Tools
- **yt-dlp** - YouTube and video downloader
- **ffmpeg** - Video/audio processing
- **git** - Version control
- **curl** - HTTP client
- **wget** - File downloader

### Python Libraries
- **requests** - HTTP library for Python
- **beautifulsoup4** - Web scraping
- **pandas** - Data analysis and manipulation
- **numpy** - Numerical computing

## Local Development

1. Clone this repository
2. Copy the environment template: `cp .env.example .env`
3. Update the `.env` file with your credentials and settings
4. Build and run: `docker-compose up -d --build`
5. Access n8n at http://localhost:5678

## Deploying to Render

1. Push this repository to GitHub
2. Create a new Web Service in Render
3. Connect to your GitHub repository
4. Set the environment to "Docker"
5. Add all required environment variables in the Render dashboard:
   - Database credentials (Supabase)
   - n8n encryption key
   - Authentication settings
6. Deploy the service

## Updates

This setup automatically pulls the latest official n8n updates when you rebuild the Docker image. To update:

**Local:** `docker-compose build --no-cache && docker-compose up -d`
**Render:** Trigger a new deployment from the dashboard

## Data Persistence

- **Local:** Data stored in `./data` directory
- **Render:** Uses Supabase PostgreSQL database for persistence
- **Migrations:** Your existing n8n data will be preserved when using the same database and encryption key
