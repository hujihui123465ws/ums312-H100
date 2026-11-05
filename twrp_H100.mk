#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

$(call inherit-product, device/ums312/H100/device.mk)

PRODUCT_DEVICE := H100
PRODUCT_NAME := twrp_H100
PRODUCT_BRAND := EEBBK
PRODUCT_MODEL := S1W
PRODUCT_MANUFACTURER := ums312
PRODUCT_RELEASE_NAME := H100

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="H100_ctcc-user 9 PPR1.180610.011 V1.3.8_210831 release-keys"
BUILD_FINGERPRINT := EEBBK/H100_ctcc/H100:9/PPR1.180610.011/V1.3.8_210831:user/release-keys
