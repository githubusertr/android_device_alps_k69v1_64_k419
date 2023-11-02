#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
# SPDX-License-Identifier: Apache-2.0


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from x600 device
$(call inherit-product, device/omix/x600/device.mk)

PRODUCT_DEVICE := x600
PRODUCT_NAME := twrp_x600
PRODUCT_BRAND := omix
PRODUCT_MODEL := x600
PRODUCT_MANUFACTURER := omix
PRODUCT_RELEASE_NAME := Omix X600

PRODUCT_GMS_CLIENTID_BASE := android-ragentek

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="X600-user 12 SP1A.210812.016 1692843481 release-keys"

BUILD_FINGERPRINT := OMIX/X600/X600:12/SP1A.210812.016/1692843481:user/release-keys
