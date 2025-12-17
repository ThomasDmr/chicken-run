#!/bin/bash
set -e

# Check if an IP address was provided
if [ -z "$1" ]; then
  echo "Usage: $0 <IP_ADDRESS>"
  exit 1
fi

IP_ADDRESS=$1

# Pass the additional arguments to the balena push command
grep -v '^#' .env | sed '/^$/d' | sed 's/^/--env /' | \
xargs balena push "$IP_ADDRESS"