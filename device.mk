#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/unknown/veux
# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=ext4 \
    POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Boot control
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl-qti \
    android.hardware.boot@1.2-impl-qti.recovery \
    android.hardware.boot@1.2-service

# Display
PRODUCT_PACKAGES += \
    vendor.qti.hardware.display.composer-service

PRODUCT_PACKAGES += \
    android.hardware.graphics.mapper@3.0-impl-qti-display \
    android.hardware.graphics.mapper@4.0-impl-qti-display \
    vendor.qti.hardware.display.allocator-service

PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    memtrack.default

PRODUCT_PACKAGES += \
    libdisplayconfig.system.qti \
    libqdMetaData.system \
    vendor.display.config@1.15.vendor \
    vendor.qti.hardware.display.mapper@1.1.vendor \
    vendor.qti.hardware.display.mapper@2.0.vendor

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload
