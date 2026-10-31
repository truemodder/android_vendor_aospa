#
# Copyright (C) 2022 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (aospa_tundra,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
# NOTE: copied from AOSPA dubai product (uvite), NOT from the generic template
# in the bringup docs (core_64_bit.mk / full_base_telephony.mk). Dubai uses
# core_64_bit_only.mk + aosp_base_telephony.mk; keep that until a build proves
# otherwise, to minimise divergence from a known-working AOSPA device.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the custom device configuration.
$(call inherit-product, device/motorola/tundra/device.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := tundra
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := motorola edge 30 fusion
PRODUCT_NAME := aospa_tundra

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=tundra_g

endif
