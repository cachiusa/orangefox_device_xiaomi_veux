#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# Release name
PRODUCT_RELEASE_NAME := veux
DEVICE_PATH := device/xiaomi/$(PRODUCT_RELEASE_NAME)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit any OrangeFox-specific settings
$(call inherit-product-if-exists, $(DEVICE_PATH)/fox_$(PRODUCT_RELEASE_NAME).mk)

# Inherit from veux device
$(call inherit-product, device/xiaomi/veux/device.mk)

PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 11 Pro 5G
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# A/B
ifeq ($(VBAR),1)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)
else
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch.mk)
endif