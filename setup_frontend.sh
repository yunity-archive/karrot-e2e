#!/bin/bash
set -e

git clone https://github.com/yunity/karrot-frontend
cd karrot-frontend
if [ ${frontend_branch} ]; then
    git checkout ${frontend_branch}
    (cd .. && bash push_status.sh karrot-frontend pending)
fi
# TODO restore node_modules from cache
yarn
# TODO cache node_modules
echo "BACKEND=http://localhost:8000" > .env
yarn run dev
