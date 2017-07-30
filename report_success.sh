#!/bin/bash
set -e

echo "success"
if [ "x${frontend_branch}" != "x" ]; then
    bash push_status.sh foodsaving-frontend success;
elif [ "x${backend_branch}" != "x" ]; then
    bash push_status.sh foodsaving-backend success;
else
    echo "no branch"
fi