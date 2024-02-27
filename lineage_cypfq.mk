#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from penang device
$(call inherit-product, device/motorola/cypfq/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Matrixx
MATRIXX_MAINTAINER := FPSensor
MATRIXX_CHIPSET := SM4350
MATRIXX_BATTERY := 5000mah
MATRIXX_DISPLAY := 1080x2400
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_EXCLUDES_VIA := true
TARGET_ENABLE_BLUR := true

# Gapps
WITH_GMS := true
TARGET_GAPPS_ARCH := arm64
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true

PRODUCT_NAME := lineage_cypfq
PRODUCT_DEVICE := cypfq
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto G51 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=penang_g \
    PRIVATE_BUILD_DESC="penang_g-user 11 T1TPS33.1-73-2-2 f8b57 release-keys"

BUILD_FINGERPRINT := motorola/penang_g/penang:11/T1TPS33.1-73-2-2/f8b57:user/release-keys
