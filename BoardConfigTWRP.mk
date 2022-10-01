#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# APEX
TW_EXCLUDE_APEX := true

# Brightness
TW_BRIGHTNESS_PATH    := "/sys/class/backlight/panel0-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 200
TW_MAX_BRIGHTNESS     := 2047

# Display
TW_NO_SCREEN_BLANK := true

# Encryption
BOARD_USES_METADATA_PARTITION  := true
BOARD_USES_QCOM_FBE_DECRYPTION := true
PLATFORM_SECURITY_PATCH        := 2099-12-31
PLATFORM_VERSION               := 16.1.0
PLATFORM_VERSION_LAST_STABLE   := $(PLATFORM_VERSION)
VENDOR_SECURITY_PATCH          := 2099-12-31

TW_INCLUDE_CRYPTO              := true
TW_USE_FSCRYPT_POLICY          := 2

# USB
TW_EXCLUDE_DEFAULT_USB_INIT := true

# Vibrator
TW_SUPPORT_INPUT_AIDL_HAPTICS := true