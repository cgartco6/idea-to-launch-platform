@echo off
echo Starting Setup...
npm install
npx prisma generate
npx prisma db push
npm run build
echo Setup complete!
pause
