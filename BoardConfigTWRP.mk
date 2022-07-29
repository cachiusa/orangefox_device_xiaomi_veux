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

# Encryption
BOARD_USES_METADATA_PARTITION  := true
BOARD_USES_QCOM_FBE_DECRYPTION := true
PLATFORM_SECURITY_PATCH        := 2099-12-31
PLATFORM_VERSION               := 16.1.0
PLATFORM_VERSION_LAST_STABLE   := $(PLATFORM_VERSION)
VENDOR_SECURITY_PATCH          := 2099-12-31

TW_INCLUDE_CRYPTO              := true
TW_USE_FSCRYPT_POLICY          := 2

# Filesystem tools
TW_INCLUDE_NTFS_3G := true
TW_NO_EXFAT_FUSE   := true

# Logcat
TARGET_USES_LOGD    := true
TWRP_INCLUDE_LOGCAT := true

# Storage
RECOVERY_SDCARD_ON_DATA := true

# Time
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_QCOM_ATS_OFFSET           := 1596724914595

# USB
TW_EXCLUDE_DEFAULT_USB_INIT := true

# UI
TW_CUSTOM_BATTERY_POS := 800
TW_CUSTOM_CLOCK_POS   := 65
TW_CUSTOM_CPU_POS     := 270
TW_STATUS_ICONS_ALIGN := center

# Vibrator
TW_SUPPORT_INPUT_AIDL_HAPTICS := true