#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
if [ -z "$BASH_SOURCE" ]; then
  echo "warn: This command should be run with /bin/bash shell"
fi

set -a

# Build hack
ALLOW_MISSING_DEPENDENCIES=true

# Force default locale
LC_ALL="C"

# Boot-as-recovery (legacy)
# Set this to 0 to build boot image instead of vendor_boot image
#TW_VNDR_BOOT=0

set +a
#
# Call other setup scripts
check_submodule () {
    if [[ -d "$2"/.git ]]; then
        remote="$(git -C $2 config --get remote.origin.url)"
        if [[ "$remote" == $1* ]]; then
            needs_setup=0
            ref=$(git -C $2 rev-parse --verify --short=8 HEAD)
            echo "[  OK  ] $2 @ $ref"
        else
            needs_setup=1
        fi
    else
        needs_setup=1
    fi
    
    if [[ "$needs_setup" == "1" ]]; then
        echo "[ INFO ] Setting up: $2"
        rm -rf $2/
        if git clone $1 $2 --depth 1 ; then
            echo "[  OK  ] $2 @ $(git -C $2 rev-parse --verify --short=8 HEAD)"
        else
            echo "[FAILED] Unable to clone $1"
            echo "[ INFO ] You should verify it in"
            echo "    $(pwd)/device/xiaomi/veux/reposetup.sh"
        fi
    fi
}

echo "[ INFO ] Checking for dependencies..."

check_submodule https://github.com/dereference23/kernel_xiaomi_sm6375 kernel/xiaomi/sm6375