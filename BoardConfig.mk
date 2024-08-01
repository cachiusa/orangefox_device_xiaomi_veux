#
# Copyright (C) 2023-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/veux

BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a-dotprod
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a55

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := veux
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DTBO := true

BOARD_BOOT_HEADER_VERSION := 3
BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_RAMDISK_USE_LZ4 := true
BOARD_USES_GENERIC_KERNEL_IMAGE := true

BOARD_KERNEL_CMDLINE := \
    androidboot.hardware=qcom \
    lpm_levels.sleep_disabled=1 \
    service_locator.enable=1 \
    androidboot.usbcontroller=4e00000.dwc3 \
    swiotlb=noforce \
    loop.max_part=7 \
    iptable_raw.raw_before_defrag=1 \
    ip6table_raw.raw_before_defrag=1 \
    firmware_class.path=/vendor/firmware

TARGET_KERNEL_CONFIG := veux_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/sm6375
TARGET_KERNEL_NO_GCC := true
