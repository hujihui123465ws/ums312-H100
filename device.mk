#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/ums312/H100

# Preserve Unisoc recovery runtime files extracted from the stock boot image.
SPRD_RECOVERY_ROOT_FILES := \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)

PRODUCT_COPY_FILES += $(SPRD_RECOVERY_ROOT_FILES)
SPRD_RECOVERY_ROOT_FILES :=

