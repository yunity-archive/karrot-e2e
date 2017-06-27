#!/bin/bash
set -eu

if [ ${frontend_branch} ]; then
    bash push_status.sh foodsaving-frontend success;
fi
if [ ${backend_branch} ]; then
    bash push_status.sh foodsaving-backend success;
fi
