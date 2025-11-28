#!/bin/bash

# Script to build Quasar project and deploy to GitHub Pages docs directory
set -e

echo "🚀 Building Quasar project..."
cd client
npm run build

echo "📦 Copying build output to docs directory..."
cd ..
rm -rf docs
mkdir -p docs
cp -r client/dist/spa/* docs/

echo "📋 Copying CNAME file to docs directory..."
cp CNAME docs/

echo "✅ Deployment files ready in docs/ directory"
echo "📝 Next steps:"
echo "   1. Review the docs/ directory"
echo "   2. Commit and push to trigger GitHub Pages deployment"

