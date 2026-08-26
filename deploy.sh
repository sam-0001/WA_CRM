#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "🔄 Pulling latest code from GitHub..."
git pull origin main

echo "🏗️  Rebuilding and deploying Docker containers..."
# Use sudo if your VPS requires it for docker commands
docker compose up --build -d

echo "✅ Deployment complete!"
