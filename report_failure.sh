#!/bin/bash
set -eu

if [ ${frontend_branch} ]; then
    bash push_status.sh foodsaving-frontend failure;
fi
if [ ${backend_branch} ]; then
    bash push_status.sh foodsaving-backend failure;
fi
