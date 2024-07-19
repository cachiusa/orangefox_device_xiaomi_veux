#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Encryption
BOARD_USES_METADATA_PARTITION  := true
BOARD_USES_QCOM_FBE_DECRYPTION := true
PLATFORM_SECURITY_PATCH        := 2099-12-31
PLATFORM_VERSION               := 16.1.0
PLATFORM_VERSION_LAST_STABLE   := $(PLATFORM_VERSION)
VENDOR_SECURITY_PATCH          := 2099-12-31

TW_INCLUDE_CRYPTO              := true
TW_USE_FSCRYPT_POLICY          := 2

# Vibrator
TW_SUPPORT_INPUT_AIDL_HAPTICS := true