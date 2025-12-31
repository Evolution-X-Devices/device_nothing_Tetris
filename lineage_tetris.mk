
#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

#clover flags
CLOVER_BUILDTYPE := UNOFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_DISABLE_ViperFX := true

# Inherit some common infinity stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Enable ADPF pipeline for UI performance
PRODUCT_PRODUCT_PROPERTIES += \
persist.vendor.power.adpf.enable=true \
ro.vendor.powerhal.adpf.enable=true

#crDroid flags
TARGET_ENABLE_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true

#gpu
GPU_FREQS_PATH := /sys/devices/platform/13000000.mali/devfreq/available_frequencies
GPU_MIN_FREQ_PATH := /sys/devices/platform/13000000.mali/devfreq/min_freq

# Inherit from tetris device
$(call inherit-product, device/nothing/tetris/device.mk)

PRODUCT_NAME := lineage_tetris
PRODUCT_DEVICE := tetris
PRODUCT_BRAND := Nothing
PRODUCT_MANUFACTURER := Nothing
PRODUCT_MODEL := A015

PRODUCT_GMS_CLIENTID_BASE := android-nothing

DEVICE_CODENAME := tetris

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="Tetris 15 AP3A.240905.015.A2 2506092111 release-keys" \
    BuildFingerprint=Nothing/Tetris/Tetris:15/AP3A.240905.015.A2/2506092111:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)
