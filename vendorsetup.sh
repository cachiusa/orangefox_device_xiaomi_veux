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

# OrangeFox build variables
if [[ "$NOT_ORANGEFOX" != "1" ]]; then

## General
FOX_BUILD_DEVICE=veux
FOX_TARGET_DEVICES="veux,peux"
TARGET_DEVICE_ALT=peux

## About
FOX_VERSION=$(date +"%Y%m%d")
FOX_VARIANT="vendor_boot"

## A/B
FOX_AB_DEVICE=1
FOX_VIRTUAL_AB_DEVICE=1

## vendor_boot
FOX_VENDOR_BOOT_RECOVERY=1
FOX_VENDOR_BOOT_RECOVERY_FULL_REFLASH=1

if [[ -n "$TW_VNDR_BOOT" ]] && [[ "$TW_VNDR_BOOT" != "1" ]]; then
FOX_VARIANT="boot"
unset FOX_VENDOR_BOOT_RECOVERY FOX_VENDOR_BOOT_RECOVERY_FULL_REFLASH
fi

## Add-ons
FOX_ASH_IS_BASH=1
FOX_DELETE_AROMAFM=1
FOX_ENABLE_APP_MANAGER=1
FOX_USE_BASH_SHELL=1
FOX_USE_NANO_EDITOR=1
FOX_USE_SED_BINARY=1
FOX_USE_TAR_BINARY=1
FOX_USE_XZ_UTILS=1
FOX_USE_ZSTD_BINARY=1
FOX_USE_LZ4_BINARY=1

fi
# end: OrangeFox build variables

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