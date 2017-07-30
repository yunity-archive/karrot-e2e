#!/bin/bash
set -e

echo "failure"
if [ x"${frontend_branch}" != x ]; then
    bash push_status.sh foodsaving-frontend failure;
elif [ x"${backend_branch}" != x ]; then
    bash push_status.sh foodsaving-backend failure;
else
    echo "no branch"
fi
