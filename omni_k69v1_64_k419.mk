#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from x600 device
$(call inherit-product, device/omix/x600/device.mk)

PRODUCT_DEVICE := x600
PRODUCT_NAME := omni_x600
PRODUCT_BRAND := omix
PRODUCT_MODEL := x600
PRODUCT_MANUFACTURER := omix

PRODUCT_GMS_CLIENTID_BASE := android-ragentek

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="X600-user 12 SP1A.210812.016 1692843481 release-keys"

BUILD_FINGERPRINT := OMIX/X600/X600:12/SP1A.210812.016/1692843481:user/release-keys
