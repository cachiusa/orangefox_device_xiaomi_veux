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

# Boot-as-recovery (legacy)
# Set this to build boot.img instead of vendor_boot.img
#TWRP_BUILD_BOOT_IMAGE=1

if [ "$NOT_ORANGEFOX" != "1" ]; then
  source "$DEVICE_PATH/fox_veux.sh"
fi

set +a

# Call other setup scripts
bash "$DEVICE_PATH/twrp.dependencies.sh"
