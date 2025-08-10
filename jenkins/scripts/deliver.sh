#!/usr/bin/env sh

echo '📦 Checking dependencies...'
set -x
if [ ! -d "node_modules" ]; then
  echo "📦 Installing dependencies (first time)..."
  npm install
else
  echo "✅ Using cached dependencies..."
fi
set +x

echo '🏗️ Building React app for production...'
set -x
export NODE_OPTIONS=--openssl-legacy-provider && npm run build
set +x

echo '🚀 Starting static server on port 30000...'
set -x
npm install -g serve
npx serve -s build -l 30000 &
sleep 1
echo $! > .pidfile
set +x

echo '✅ Now visit: http://localhost:30000'
