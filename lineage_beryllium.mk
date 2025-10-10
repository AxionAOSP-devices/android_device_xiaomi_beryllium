#
# Copyright (C) 2018-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/beryllium/device.mk)

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Axion Flags
AXION_MAINTAINER := Rve
AXION_PROCESSOR := Snapdragon_845

# Camera
PRODUCT_NO_CAMERA := false
AXION_CAMERA_REAR_INFO := 12,5
AXION_CAMERA_FRONT_INFO := 20

# BCR
TARGET_PREBUILT_BCR := false

# LineageOS Prebuilts
ifneq ($(WITH_GMS),true)
TARGET_INCLUDES_LOS_PREBUILTS := true
endif

# Blur effects
TARGET_ENABLE_BLUR := true

# CPU governor support
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
PERF_ANIM_OVERRIDE := true

# GPU
GPU_FREQS_PATH := /sys/class/kgsl/kgsl-3d0/gpu_available_frequencies
GPU_MIN_FREQ_PATH := /sys/class/kgsl/kgsl-3d0/min_clock_mhz

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_beryllium
PRODUCT_DEVICE := beryllium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := POCO F1
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="beryllium-user 10 QKQ1.190828.002 V12.0.3.0.QEJMIXM release-keys" \
    BuildFingerprint=Xiaomi/beryllium/beryllium:10/QKQ1.190828.002/V12.0.3.0.QEJMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
