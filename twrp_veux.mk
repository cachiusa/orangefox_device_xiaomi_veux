#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from veux device
$(call inherit-product, device/unknown/veux/device.mk)

PRODUCT_DEVICE := veux
PRODUCT_NAME := twrp_veux
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11 Pro 5G
PRODUCT_MANUFACTURER := unknown

PRODUCT_GMS_CLIENTID_BASE := android-unknown

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_veux-eng 12 SP2A.220405.004 eng.derefe.20240301.163808 test-keys"

BUILD_FINGERPRINT := Redmi/twrp_veux/veux:12/SP2A.220405.004/dereference03011637:eng/test-keys
