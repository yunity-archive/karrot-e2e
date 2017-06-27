#!/bin/bash
set -e

git clone https://github.com/yunity/foodsaving-frontend
cd foodsaving-frontend
if [ ${frontend_branch} ]; then
    git checkout ${frontend_branch}
    (cd .. && bash push_status.sh foodsaving-frontend pending)
fi
# TODO restore node_modules from cache
npm install
# TODO cache node_modules
echo "BACKEND=http://localhost:8000" > .env
npm run dev
