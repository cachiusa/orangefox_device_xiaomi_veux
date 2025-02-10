#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

if [ -z "$BASH_SOURCE" ]; then
  echo "warn: This command should be run with /bin/bash shell"
  return
fi

VENDORSETUP_PATH=$(dirname "${BASH_SOURCE[0]}")

set -a

# Boot-as-recovery (legacy)
# Set this to build boot.img instead of vendor_boot.img
#TWRP_BUILD_BOOT_IMAGE=1

if [ "$NOT_ORANGEFOX" != "1" ]; then
  if [ -z "$FOX_BUILD_DEVICE" ]; then
    FOX_BUILD_DEVICE=veux
  fi
  if [ "$FOX_BUILD_DEVICE" = "veux" ]; then
    source "${VENDORSETUP_PATH}/fox_veux.sh"
  fi
fi

set +a

# Call other setup scripts
bash "${VENDORSETUP_PATH}/twrp.dependencies.sh"
