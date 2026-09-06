#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from t2s device
$(call inherit-product, device/samsung/t2s/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_t2s
PRODUCT_DEVICE := t2s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G996B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="t2sxxx-user 15 AP3A.240905.015.A2 G996BXXSJHZC2 release-keys" \
    BuildFingerprint=samsung/t2sxxx/t2s:11/RP1A.200720.012/G996BXXSJHZC2:user/release-keys \
    DeviceProduct=t2sxxx \
    SystemName=t2sxxx

# Define PDA property for camera
PRODUCT_SYSTEM_PROPERTIES += \
    ro.build.PDA=G996BXXSJHZC2
