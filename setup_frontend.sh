#!/bin/sh
set -eu

git clone --depth 1 https://github.com/yunity/foodsaving-frontend
cd foodsaving-frontend
# TODO checkout given branch
# TODO restore node_modules from cache
npm install
# TODO cache node_modules
echo "BACKEND=http://localhost:8000" > .env
npm run dev
