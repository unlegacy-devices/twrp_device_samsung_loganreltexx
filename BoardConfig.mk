# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#
LOCAL_PATH := device/samsung/loganreltexx

# Kernel
BOARD_KERNEL_CMDLINE         := androidboot.hardware=qcom androidboot.selinux=permissive user_debug=23 zcache androidboot.bootdevice=msm_sdcc.1
BOARD_KERNEL_BASE            := 0x80200000
BOARD_MKBOOTIMG_ARGS         := --ramdisk_offset 0x02000000
BOARD_KERNEL_PAGESIZE        := 2048
TARGET_KERNEL_SOURCE         := kernel/samsung/msm8930-common
TARGET_KERNEL_CONFIG         := cyanogenmod_loganre_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8930_loganre_eur_lte_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOOTLOADER_BOARD_NAME := MSM8960
TARGET_BOARD_PLATFORM := msm8960
TARGET_CPU_VARIANT := krait

# Toolchain
KERNEL_TOOLCHAIN := /opt/toolchains/arm-eabi-4.8/bin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-eabi-

# Assert
TARGET_OTA_ASSERT_DEVICE := loganreltexx,loganrelte,GT-S7275R,GT-S7275B,GT-S7275T

# Recovery
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Partition sizes
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1698693120
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5693733888
BOARD_FLASH_BLOCK_SIZE := 131072

# CMHW
BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/cmhw

# TWRP config
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/twrp.fstab
TW_THEME := portrait_hdpi
RECOVERY_GRAPHICS_FORCE_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_CRYPTO := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_DEVICE_VERSION := 0_notnoelchannel
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p23"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,noauto_da_alloc,journal_async_commit,errors=panic"
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_KEY_LOC := "footer"
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_NO_EXFAT_FUSE := false
TW_NO_EXFAT := false
TW_EXCLUDE_NANO := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE := true
