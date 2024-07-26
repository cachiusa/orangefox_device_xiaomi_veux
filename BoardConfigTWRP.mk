#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# APEX
TW_EXCLUDE_APEX := true

# Battery
TW_BATTERY_SYSFS_WAIT_SECONDS := 5

# Brightness
TW_BRIGHTNESS_PATH    := "/sys/class/backlight/panel0-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 200
TW_MAX_BRIGHTNESS     := 2047

# Display
TW_NO_SCREEN_BLANK := true
TW_FRAMERATE       := 120
TW_INPUT_BLACKLIST := "uinput-goodix"

# Extras
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_RESETPROP    := true

# Fastboot
TW_NO_FASTBOOT_BOOT := true

# Filesystem tools
TW_INCLUDE_NTFS_3G := true
TW_NO_EXFAT_FUSE   := true

# Logcat
TARGET_USES_LOGD    := true
TWRP_INCLUDE_LOGCAT := true

# Storage
RECOVERY_SDCARD_ON_DATA := true

# Thermal
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/thermal/thermal_zone16/temp"

# Time
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_QCOM_ATS_OFFSET           := 1596724914595

# UI
TW_THEME              := portrait_hdpi
TW_EXTRA_LANGUAGES    := true