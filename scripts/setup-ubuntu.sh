#!/bin/bash
set -e  # Exit on error

echo "========================================
Idea-to-Launch Platform Mega Setup - Ubuntu
========================================"

# Update & install Node if needed
if ! command -v node &> /dev/null; then
    curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
    sudo apt-get install -y nodejs
fi

npm install
npx prisma generate
npx prisma db push
npm run build

echo "✅ Setup Complete! Run: npm run dev"
