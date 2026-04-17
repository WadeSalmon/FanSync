#!/usr/bin/env bash
# Sync with GitHub (pull), stage all changes, commit if needed, then push.
# Usage: ./sync-and-push.sh "Your commit message"
# Optional: REBASE=1 ./sync-and-push.sh "msg"  →  git pull --rebase
set -euo pipefail

cd "$(dirname "$0")"

REMOTE="${REMOTE:-origin}"
BRANCH="${BRANCH:-main}"

if [[ "${REBASE:-0}" == "1" ]]; then
  git pull --rebase "$REMOTE" "$BRANCH"
else
  git pull "$REMOTE" "$BRANCH"
fi

git add -A

if git diff --cached --quiet; then
  echo "Nothing new to commit."
else
  if [[ $# -lt 1 ]]; then
    echo "Usage: $0 \"commit message\""
    echo "There are staged changes; pass a commit message."
    exit 1
  fi
  git commit -m "$1"
fi

git push "$REMOTE" "$BRANCH"
echo "Done: pushed to $REMOTE/$BRANCH."
