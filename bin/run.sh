#!/bin/bash
SCRIPT_DIR=$(dirname "$(realpath "$0")")

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # Load nvm

# as this is old code, on ly node 18 that can successfully works.
nvm use 18
node -r esm $SCRIPT_DIR/server --port 1234  # Start your application