#!/usr/bin/env bash
repo_sync() {
  local REPO_TOP=$(pwd)
  local REPO_PATH=$1
  local REPO_URL=$2
  local REPO_REF=$3
  shift 3
  local REPO_ARGS="--no-tags --prune --no-recurse-submodules --depth=1 $*"
  echo "-- ${REPO_PATH}: Sync"
  [[ -d "${REPO_PATH}" ]] || mkdir -p "${REPO_PATH}"
  cd "${REPO_PATH}"
  [[ -d ".git" ]] || git init
  echo "-- ${REPO_PATH}: Set remote"
  for _remote in $(git remote); do
    if [[ ${_remote} = "origin" ]]; then
      git remote remove origin
      break
    fi
  done
  git remote add origin "${REPO_URL}"
  echo "-- ${REPO_PATH}: Fetch"
  git fetch ${REPO_ARGS} origin "${REPO_REF}"
  echo "-- ${REPO_PATH}: Checkout"
  git diff --quiet HEAD "origin/${REPO_REF}" || git checkout --force -B "${REPO_REF}" "origin/${REPO_REF}"
  echo "-- ${REPO_PATH}: Checked out @ $(git rev-parse --short=8 HEAD)"
  cd "${REPO_TOP}"
}
set -e
repo_sync kernel/xiaomi/sm6375 https://github.com/dereference23/kernel_xiaomi_sm6375 main
