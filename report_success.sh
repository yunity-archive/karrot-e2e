#!/bin/bash
set -e

echo "success"
if [ -z "${frontend_branch}" ]; then
    bash push_status.sh foodsaving-frontend success;
elif [ -z "${backend_branch}" ]; then
    bash push_status.sh foodsaving-backend success;
else
    echo "no branch"
fi