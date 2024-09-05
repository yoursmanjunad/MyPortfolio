#!/bin/bash

# Define variables
APP_DIR="/path/to/your/app"
GIT_REPO="https://github.com/yoursmanjunad/MyPortfolio"

# Navigate to app directory
cd $APP_DIR

# Pull the latest changes
git pull $GIT_REPO

# Install dependencies (if applicable)
# For example, if it's a Node.js app:
# npm install

# Restart the application (adjust based on your setup)
# For example, if using PM2:
# pm2 restart all

# Log out if necessary
# exit

