# Copyright (C) 2024 The Android Open Source Project

#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2021-2024 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#
if [ -z "$BASH_SOURCE" ]; then
  echo "warn: This command should be run with /bin/bash shell"
fi
set -a

# Build hack
ALLOW_MISSING_DEPENDENCIES=true

# Force default locale
LC_ALL="C"

# General
FOX_BUILD_DEVICE=veux
FOX_TARGET_DEVICES="veux,peux"
TARGET_DEVICE_ALT=peux

# about
FOX_VERSION=$(date +"%d%m%Y")
FOX_VARIANT="vendor_boot-as-recovery"
OF_MAINTAINER="github.com/cachiusa"

# A/B
FOX_AB_DEVICE=1
FOX_VIRTUAL_AB_DEVICE=1

# vendor_boot
FOX_VENDOR_BOOT_RECOVERY=1
FOX_VENDOR_BOOT_RECOVERY_FULL_REFLASH=1

# Display
OF_CLOCK_POS=1
OF_SCREEN_H=2400
OF_STATUS_H=104
OF_STATUS_INDENT_LEFT=64
OF_STATUS_INDENT_RIGHT=64

# Miscellaneous
OF_FLASHLIGHT_ENABLE=0
OF_OPTIONS_LIST_NUM=8
OF_QUICK_BACKUP_LIST="/boot;/vendor_boot;/dtbo;"
OF_USE_GREEN_LED=0

# Add-ons
FOX_ASH_IS_BASH=1
FOX_DELETE_AROMAFM=1
FOX_ENABLE_APP_MANAGER=1
FOX_USE_BASH_SHELL=1
FOX_USE_NANO_EDITOR=1
FOX_USE_SED_BINARY=1
FOX_USE_TAR_BINARY=1
FOX_USE_UPDATED_MAGISKBOOT=1
FOX_USE_XZ_UTILS=1
OF_ENABLE_LPTOOLS=1

# Filesystem
OF_BIND_MOUNT_SDCARD_ON_FORMAT=1
OF_DYNAMIC_FULL_SIZE=9122611200
OF_UNBIND_SDCARD_F2FS=1
OF_WIPE_METADATA_AFTER_DATAFORMAT=1

# Kernel
OUT_KERNEL_DTB="target/product/veux/obj/KERNEL_OBJ/arch/arm64/boot/dts/vendor/xiaomi/veux.dtb"

set +a
