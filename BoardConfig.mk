#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/t2s

# Kernel Modules
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load))
BOARD_RECOVERY_RAMDISK_KERNEL_MODULES_LOAD :=  $(strip $(shell cat $(DEVICE_PATH)/modules.load.recovery))
BOOT_KERNEL_MODULES := $(BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD)
RECOVERY_KERNEL_MODULES := $(BOARD_RECOVERY_RAMDISK_KERNEL_MODULES_LOAD)
BOARD_VENDOR_KERNEL_MODULES_LOAD := sec_debug_sched_info.ko input_booster_lkm.ko

# Screen density
TARGET_SCREEN_DENSITY := 450

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# OTA assert
TARGET_OTA_ASSERT_DEVICE := t2s

# Inherit from universal2100
include device/samsung/universal2100-common/BoardConfigCommon.mk

# Inherit from the proprietary version
include vendor/samsung/t2s/BoardConfigVendor.mk
