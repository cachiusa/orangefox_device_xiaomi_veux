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
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"

export FOX_BUILD_DEVICE=veux
export TARGET_DEVICE_ALT=peux
export FOX_TARGET_DEVICES="veux,peux"

export FOX_VENDOR_BOOT_RECOVERY=1
export FOX_AB_DEVICE=1
export FOX_VIRTUAL_AB_DEVICE=1

# screen settings
export OF_SCREEN_H=2400
export OF_STATUS_H=104
export OF_STATUS_INDENT_LEFT=64
export OF_STATUS_INDENT_RIGHT=64
export OF_CLOCK_POS=1

# other stuff
export OF_USE_GREEN_LED=0
export OF_QUICK_BACKUP_LIST="/boot;/vendor_boot;/dtbo;"
export OF_ENABLE_LPTOOLS=1
export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1

# full size
export OF_DYNAMIC_FULL_SIZE=9122611200

# number of list options before scrollbar creation
export OF_OPTIONS_LIST_NUM=8

# ----- data format stuff -----
# ensure that /sdcard is bind-unmounted before f2fs data repair or format
export OF_UNBIND_SDCARD_F2FS=1

# automatically wipe /metadata after data format
export OF_WIPE_METADATA_AFTER_DATAFORMAT=1

# avoid MTP issues after data format
export OF_BIND_MOUNT_SDCARD_ON_FORMAT=1

export OF_USE_LZ4_COMPRESSION=0
