#!/usr/bin/env bash
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

repo_sync() {
  REPO_PATH=${1:?}
  REPO_URL=${2:?}
  REPO_REF=${3:?}
  FETCH_ARGS="--no-tags --prune --no-recurse-submodules --depth=1 ${4}"
  ORIGIN_BRANCH="refs/remotes/origin/$REPO_REF"

  INFO() { echo "-- $REPO_PATH: $*"; }
  _GIT() { git -C "$REPO_PATH" "$@"; }

  INFO "Syncing repository"

  if [[ ! -d $REPO_PATH/.git ]]; then
    INFO "Initializing the repository"
    git init "$REPO_PATH"
  fi

  for _remote in $(_GIT remote); do
    if [[ $_remote = "origin" ]]; then
      ORIGIN_EXISTS=true
      CURRENT_URL=$(_GIT remote get-url origin)
      break
    else
      continue
    fi
  done

  if [[ -z $ORIGIN_EXISTS ]]; then
    INFO "Adding remote"
    _GIT remote add origin "$REPO_URL"
  elif [[ $CURRENT_URL != "$REPO_URL" ]]; then
    INFO "Set 'origin' to $REPO_URL"
    _GIT remote set-url origin "$REPO_URL"
  fi

  INFO "Fetching the repository"
  _GIT fetch $FETCH_ARGS origin "$REPO_REF"

  if ! _GIT diff --quiet HEAD "$ORIGIN_BRANCH"; then
    INFO "Checking out the ref"
    _GIT checkout --force -B "$REPO_REF" "$ORIGIN_BRANCH"
  fi

  INFO "$(_GIT log -1 --format=%H)"
}

# Initialize
repo_sync "kernel/xiaomi/sm6375" "https://github.com/dereference23/kernel_xiaomi_sm6375" "main"