#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from s9863a1h10 device
$(call inherit-product, device/duoqin/s9863a1h10/device.mk)

PRODUCT_DEVICE := s9863a1h10
PRODUCT_NAME := omni_s9863a1h10
PRODUCT_BRAND := Qin
PRODUCT_MODEL := Qin 2 Pro
PRODUCT_MANUFACTURER := duoqin

PRODUCT_GMS_CLIENTID_BASE := android-duoqin

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="s9863a1h10_Natv-user 9 PPR1.180610.011 251 release-keys"

BUILD_FINGERPRINT := Qin/s9863a1h10_Natv/s9863a1h10:9/PPR1.180610.011/251:user/release-keys
