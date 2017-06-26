#!/bin/sh
set -eu

echo "Waiting for servers to start..."
while true; do
  curl -f http://localhost:3000/index.html > /dev/null 2> /dev/null
  if [ $? = 0 ]; then
    echo "Frontend started"

    curl -f http://localhost:8000/api/groups/ > /dev/null 2> /dev/null
    if [ $? = 0 ]; then
      echo "Backend started"
      break
    fi
  fi

  sleep 10
  echo -n .
done

