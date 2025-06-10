# KVN-N8N: Enhanced n8n Docker Setup

A powerful, customized n8n Docker image with extended capabilities for advanced automation workflows including web scraping, video processing, data analysis, and browser automation.

## 🚀 Features

This enhanced n8n setup extends the official n8n Docker image with comprehensive tooling:

### 🛠️ System Tools
- **yt-dlp** - Advanced YouTube and video platform downloader
- **ffmpeg** - Professional video/audio processing and conversion
- **git** - Version control for workflow management
- **curl** - HTTP client for API interactions
- **wget** - Reliable file downloading
- **Python 3** - Full Python runtime environment

### 🐍 Python Libraries
- **requests** - Elegant HTTP library for API calls
- **beautifulsoup4** - Powerful web scraping and HTML parsing
- **pandas** - Advanced data analysis and manipulation
- **numpy** - High-performance numerical computing

### 📦 Node.js Packages
- **puppeteer** - Headless Chrome browser automation
- **playwright** - Cross-browser automation (Chrome, Firefox, Safari)
- **cheerio** - Server-side jQuery-like HTML manipulation
- **axios** - Promise-based HTTP client
- **lodash** - Utility library for data manipulation
- **moment** - Date and time manipulation
- **uuid** - Unique identifier generation
- **sharp** - High-performance image processing

## ☁️ Deploying to Render

This project is optimized for deployment on Render's free tier with the included `render.yaml` configuration.

### Deployment Steps
1. **Prepare Repository**
   - Push this repository to GitHub
   - Ensure all sensitive data is in environment variables

2. **Create Render Service**
   - Create a new Web Service in Render
   - Connect to your GitHub repository
   - Render will automatically detect the Docker configuration

3. **Environment Variables**
   Configure the following in your Render dashboard:
   > Check .env.example

4. **Deploy**
   - Click "Deploy" in Render dashboard
   - Monitor deployment logs for any issues
   - Access your n8n instance at the provided Render URL

### 📊 Render Configuration
- **Service Type**: Web Service
- **Environment**: Docker
- **Plan**: Free tier compatible
- **Auto-deploy**: Enabled on main branch updates


## 🏠 Local Development

### Prerequisites
- Docker and Docker Compose installed
- Git for version control

### Setup Steps
1. **Clone the repository**
   ```bash
   git clone https://github.com/kavinthangavel/kvn-n8n
   cd kvn-n8n
   ```

2. **Environment Configuration**
   ```bash
   cp .env.example .env
   ```
   Update the `.env` file with your specific credentials and settings

3. **Build and Run**
   ```bash
   docker-compose up -d --build
   ```

4. **Access n8n**
   - Open your browser to http://localhost:5678
   - Complete the initial setup wizard
   - Start building your automation workflows!

### Useful Commands
- **View logs**: `docker-compose logs -f`
- **Stop services**: `docker-compose down`
- **Rebuild**: `docker-compose build --no-cache`


## Updates

This setup automatically pulls the latest official n8n updates when you rebuild the Docker image. To update:

**Render:** Trigger a new deployment from the dashboard
**Local:** `docker-compose build --no-cache && docker-compose up -d`

## Data Persistence

- **Render:** Uses Supabase PostgreSQL database for persistence
- **Local:** Data stored in `./data` directory
- **Migrations:** Your existing n8n data will be preserved when using the same database and encryption key
