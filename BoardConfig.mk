#
# Copyright (C) 2013 The CyanogenMod Project
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

# Include path
TARGET_SPECIFIC_HEADER_PATH := device/htc/m7/include

# This needs to be defined first
USE_CAMERA_STUB := false

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := m7
TARGET_NO_BOOTLOADER := true

# Boot
BOARD_KERNEL_BASE := 0x80600000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01400000

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true

# CPU
TARGET_CPU_VARIANT := krait

# Architecture specific
ARCH_ARM_HAVE_ARMV7A := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true

# Architecture Krait
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Platform CAF
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_QCOM_DISPLAY_VARIANT := caf
TARGET_QCOM_MEDIA_VARIANT := caf

# Hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_PROVIDES_LIBLIGHT := true

# RIL
BOARD_USE_NEW_LIBRIL_HTC := true
BOARD_PROVIDES_LIBRIL := true

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true
BOARD_USES_SEPERATED_VOICE_SPEAKER := true
BOARD_USES_SEPERATED_VOIP := true
BOARD_HAVE_HTC_CSDCLIENT := true
BOARD_HAVE_LOW_LATENCY_AUDIO := true
TARGET_USES_QCOM_COMPRESSED_AUDIO := true
BOARD_AUDIO_AMPLIFIER := device/htc/m7/libaudioamp

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/m7/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/htc/m7/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY := false

# Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true

# Graphics - EGL
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/htc/m7/egl.cfg

# Graphics - Skia
BOARD_USE_SKIA_LCDTEXT := true
BOARD_USES_SKIAHWJPEG := true

# GPS
BOARD_HAVE_NEW_QC_GPS := true

# Build Flags
COMMON_GLOBAL_CFLAGS += -DNEW_LIBRIL_HTC -DHTC_CAMERA_HARDWARE -DDISABLE_HW_ID_MATCH_CHECK -DMR0_CAMERA_BLOB -DQCOM_BSP_CAMERA_ABI_HACK
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DHTCLOG -DNEW_ION_API=1

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"

# Wifi
BOARD_WLAN_DEVICE						:= bcmdhd
WIFI_BAND									:= 802_11_ABGN
WPA_SUPPLICANT_VERSION				:= VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER		:= NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB	:= lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER					:= NL80211
BOARD_HOSTAPD_PRIVATE_LIB				:= lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_NAME				:= "bcmdhd"
WIFI_DRIVER_MODULE_PATH				:= "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_FW_PATH_PARAM			:= "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA				:= "/system/etc/firmware/fw_bcm4335_b0.bin"
WIFI_DRIVER_FW_PATH_AP					:= "/system/etc/firmware/fw_bcm4335_apsta_b0.bin"
WIFI_DRIVER_FW_PATH_P2P				:= "/system/etc/firmware/fw_bcm4335_p2p_b0.bin"
WIFI_DRIVER_MODULE_ARG				:= "firmware_path=/system/etc/firmware/fw_bcm4335_b0.bin nvram_path=/system/etc/calibration"
WIFI_DRIVER_MODULE_AP_ARG			:= "firmware_path=/system/etc/firmware/fw_bcm4335_apsta_b0.bin nvram_path=/system/etc/calibration"

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1946156032
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27917287424
BOARD_FLASH_BLOCK_SIZE := 4096

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USES_MMCUTILS := true

# Kernel building
TARGET_KERNEL_SOURCE := kernel/htc/m7
TARGET_KERNEL_CONFIG := tripndroid_m7_defconfig

# inherit from the proprietary version
-include vendor/htc/m7/BoardConfigVendor.mk
