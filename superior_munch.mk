#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common SuperiorOS stuff.
$(call inherit-product, vendor/superior/config/common.mk)

# Inherit from munch device
$(call inherit-product, device/xiaomi/munch/device.mk)

# Inherit viper4android stuff
$(call inherit-product-if-exists, packages/apps/ViPER4AndroidFX/config.mk)

# Officialify
SUPERIOR_OFFICIAL := true

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Supported Device Flags
TARGET_SUPPORTS_NOW_PLAYING := true
TARGET_INCLUDE_STOCK_ARCORE := true

#Superior OS Flags
TARGET_INCLUDE_PIXEL_CHARGER := true
BUILD_WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_ENABLE_BLUR := true

# Quick Tap Feature
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := superior_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F4

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/munch/munch:13/RKQ1.211001.001/V14.0.3.0.TLMMIXM:user/release-keys
