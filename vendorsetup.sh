#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
DEVICE_PATH=device/xiaomi/veux

if [ -z "$BASH_SOURCE" ]; then
  echo "warn: This command should be run with /bin/bash shell"
fi

set -a

# Build hack
ALLOW_MISSING_DEPENDENCIES=true

# Force default locale
LC_ALL="C"

# Boot-as-recovery (legacy)
# Set this to build boot.img instead of vendor_boot.img
#TWRP_BUILD_BOOT_IMAGE=1

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

# Call other setup scripts
bash "$DEVICE_PATH/twrp.dependencies.sh"
