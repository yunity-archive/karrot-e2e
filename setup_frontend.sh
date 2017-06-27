#!/bin/sh
set -e

git clone --depth 1 https://github.com/yunity/foodsaving-frontend
cd foodsaving-frontend
if [ ${frontend_branch} ]; then
    git fetch origin ${frontend_branch}:${frontend_branch}
    git checkout ${frontend_branch}
fi
# TODO restore node_modules from cache
npm install
# TODO cache node_modules
echo "BACKEND=http://localhost:8000" > .env
npm run dev
