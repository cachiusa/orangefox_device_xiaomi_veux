#
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
#   See <https://gitlab.com/OrangeFox/vendor/recovery/-/blob/fox_12.1/orangefox_build_vars.txt>
#   for a list of build variables (fox_12.1 builds only)

# Maintainer
OF_MAINTAINER := github.com/cachiusa

# Display
OF_CLOCK_POS           := 1
OF_SCREEN_H            := 2400
OF_STATUS_H            := 104
OF_STATUS_INDENT_LEFT  := 64
OF_STATUS_INDENT_RIGHT := 64

# Miscellaneous
OF_FLASHLIGHT_ENABLE := 0
OF_OPTIONS_LIST_NUM  := 9
OF_QUICK_BACKUP_LIST := /boot;/vendor_boot;/dtbo;
OF_USE_GREEN_LED     := 0

# Add-ons
OF_ENABLE_LPTOOLS := 1

# Filesystem
OF_BIND_MOUNT_SDCARD_ON_FORMAT    := 1
OF_DYNAMIC_FULL_SIZE              := 9122611200
OF_UNBIND_SDCARD_F2FS             := 1
OF_WIPE_METADATA_AFTER_DATAFORMAT := 1
