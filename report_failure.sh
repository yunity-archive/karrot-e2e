#!/bin/bash
set -e

echo "failure"
if [ -z "${frontend_branch}" ]; then
    bash push_status.sh foodsaving-frontend failure;
elif [ -z "${backend_branch}" ]; then
    bash push_status.sh foodsaving-backend failure;
else
    echo "no branch"
fi
