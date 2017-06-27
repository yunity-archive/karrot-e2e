#!/bin/bash
set -eu
repo=$1

# Status can be one of pending, success, error, or failure.
status=$2

cd ${repo}
SHA=$(git rev-parse HEAD)

curl -u ${GITHUB_CREDENTIALS} -X POST -H "Content-Type: application/json" -d '{
  "state":"'${status}'",
  "context":"ci/circleci-e2e",
  "target_url":"'${CIRCLE_BUILD_URL}'",
  "description":"end-to-end test suite"
}' https://api.github.com/repos/yunity/${repo}/statuses/${SHA}