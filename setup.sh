#!/bin/bash

echo "Updating submodules..."
git submodule update --init --recursive

echo "Installing dependencies..."
npm install --prefix api
npm install --prefix ui
npm install

echo "Generating JWT secret..."
JWT_SECRET=$(openssl rand -hex 32)

echo "Creating .env for API..."
cat <<EOF > api/.env
NODE_ENV=development
PORT=8080
JWT_SECRET="$JWT_SECRET"
EOF

echo "Creating db folder..."
mkdir -p api/db

echo "✅ Setup complete. Get started with: npm run dev"