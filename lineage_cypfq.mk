#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from cypfq device
$(call inherit-product, device/motorola/cypfq/device.mk)

PRODUCT_DEVICE := cypfq
PRODUCT_NAME := lineage_cypfq
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g51 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cypfq_g-user 11 S2RYAS32.58-13-9-8 2dd3a7 release-keys"

BUILD_FINGERPRINT := motorola/cypfq_g/cypfq:11/S2RYAS32.58-13-9-8/2dd3a7:user/release-keys
