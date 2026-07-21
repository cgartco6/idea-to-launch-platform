# Idea-to-Launch Platform - Windows PowerShell Mega Setup
Write-Host "========================================`nIdea-to-Launch Platform Mega Setup`n========================================" -ForegroundColor Green

# Install deps
npm install

# Prisma
npx prisma generate
npx prisma db push

# Build
npm run build

Write-Host "✅ Setup Complete!" -ForegroundColor Green
Write-Host "Run: npm run dev" -ForegroundColor Cyan
