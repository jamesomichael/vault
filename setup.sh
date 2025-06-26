#!/bin/bash

echo "Updating submodules..."
git submodule update --init --recursive

echo "Installing dependencies..."
npm install --prefix api
npm install --prefix ui
npm install --prefix electron


echo "Copying .env..."
cp api/.env.local api/.env

# echo "Generating JWT secret..."
# JWT_SECRET=$(openssl rand -hex 32)

# echo "Adding JWT secret to .env..."
# echo "JWT_SECRET=\"$JWT_SECRET\"" >> "api/.env"

echo "Creating db folder..."
mkdir -p api/db

echo "✅ Setup complete. Get started with: npm run dev"