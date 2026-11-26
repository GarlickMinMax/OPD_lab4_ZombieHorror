#!/bin/sh
set -e

echo "setting up local hooks"
git config core.hooksPath .githooks

if [ -f ".githooks/pre-commit" ]; then
    chmod +x .githooks/pre-commit
fi

echo "current core.hooksPath: $(git config --get core.hooksPath)"
echo "hooks activated"