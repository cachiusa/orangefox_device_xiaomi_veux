#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# General
TW_THEME                      := portrait_hdpi
TW_EXTRA_LANGUAGES            := true
TW_BATTERY_SYSFS_WAIT_SECONDS := 5
TW_CUSTOM_CPU_TEMP_PATH       := "/sys/devices/virtual/thermal/thermal_zone26/temp"
TW_HAS_EDL_MODE               := true
TW_SUPPORT_INPUT_AIDL_HAPTICS := true
TARGET_RECOVERY_QCOM_RTC_FIX  := true
TARGET_USES_LOGD              := true

# Crypto & FBE
BOARD_USES_METADATA_PARTITION   := true
BOARD_USES_QCOM_FBE_DECRYPTION  := true
TW_INCLUDE_CRYPTO               := true
TW_INCLUDE_CRYPTO_FBE           := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
TW_USE_FSCRYPT_POLICY           := 2

# Display
TW_BRIGHTNESS_PATH    := "/sys/class/backlight/panel0-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 200
TW_FRAMERATE          := 120
TW_INPUT_BLACKLIST    := "uinput-goodix"
TW_MAX_BRIGHTNESS     := 2047
TW_NO_SCREEN_BLANK    := true

# Filesystem
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INCLUDE_NTFS_3G          := true
TW_IS_SUPER                 := 1
TW_NO_EXFAT_FUSE            := true
RECOVERY_SDCARD_ON_DATA     := true

# Extras
TW_EXCLUDE_APEX         := true
TW_INCLUDE_FASTBOOTD    := true
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_PYTHON       := true
TW_INCLUDE_REPACKTOOLS  := true
TW_INCLUDE_RESETPROP    := true
TW_USE_TOOLBOX          := true
TWRP_INCLUDE_LOGCAT     := true
