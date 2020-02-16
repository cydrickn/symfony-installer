#!/usr/bin/env /bin/sh
git config --global user.email "$GITLAB_EMAIL"
git config --global user.name "$GITLAB_NAME"

exec "symfony" "$@"