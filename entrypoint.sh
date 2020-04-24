#!/bin/sh -l

# Requires BRANCH_NAME, BOT_USER, BOT_TOKEN to be included by workflow
#export GITHUB_API_TOKEN=$GITHUB_API_TOKEN

cd /nist-software-bot/scripts

# Run MASTER script
./MASTER.sh

exit 0
