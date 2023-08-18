#!/bin/bash
# This script will configure the runner and start it

./actions-runner/config.sh --url $GITHUB_REPO_URL --token $GITHUB_RUNNER_TOKEN
./actions-runner/run.sh
