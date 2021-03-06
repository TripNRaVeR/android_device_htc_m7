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

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := m7,m7ul,m7tmo,m7att

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := m7
TARGET_NO_BOOTLOADER := true

# Boot
BOARD_KERNEL_BASE := 0x80600000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=0 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01600000

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# CPU
TARGET_CPU_VARIANT := krait

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno320

# Platform CAF
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_QCOM_DISPLAY_VARIANT := caf
TARGET_QCOM_MEDIA_VARIANT := caf

# Hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_PROVIDES_LIBLIGHT := true
#BOARD_PROVIDES_LIBRIL := true

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_LEGACY_ALSA_AUDIO := true
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true
BOARD_USES_SEPERATED_VOICE_SPEAKER := true
BOARD_USES_SEPERATED_VOIP := true
BOARD_HAVE_HTC_CSDCLIENT := true
BOARD_HAVE_LOW_LATENCY_AUDIO := true
TARGET_USES_QCOM_COMPRESSED_AUDIO := true
TARGET_USES_QCOM_MM_AUDIO := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
BOARD_AUDIO_AMPLIFIER := device/htc/m7/libaudioamp

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/m7/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/htc/m7/bluetooth/libbt_vndcfg.txt

# Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_DISPLAY_INSECURE_MM_HEAP := true
USE_DEVICE_SPECIFIC_CAMERA := true

# Graphics - EGL
TARGET_DISPLAY_USE_RETIRE_FENCE := true
TARGET_USES_QCOM_BSP := true
TARGET_USES_OVERLAY := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/htc/m7/egl.cfg

# Graphics - Skia
BOARD_USE_SKIA_LCDTEXT := true

# Graphics - TripNDroid FB hack
TARGET_ENABLE_QTR_BUFFERING := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 4

# QCOM Renderscript
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# Graphics - Shader cache
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

# GPS
BOARD_HAVE_NEW_QC_GPS := true
TARGET_NO_RPC := true

# Build Flags
COMMON_GLOBAL_CFLAGS += -DHTC_CAMERA_HARDWARE
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DHTCLOG -DQCOM_BSP
COMMON_GLOBAL_CFLAGS += -D__ARM_CACHE_LINE_SIZE=64 -DHWUI_COMPILE_FOR_PERF
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# Compiler Flags
TARGET_GLOBAL_CFLAGS += -funsafe-math-optimizations -mfloat-abi=softfp -mfpu=neon
TARGET_GLOBAL_CPPFLAGS += -funsafe-math-optimizations -mfloat-abi=softfp -mfpu=neon

# QCOM Optimizations
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Protobuf-c
PROTOBUF_SUPPORTED := true

# Wifi
WPA_SUPPLICANT_VERSION           := VER_0_8_X
WIFI_BAND                        := 802_11_ABGN
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/firmware/fw_bcm4335_b0.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/firmware/fw_bcm4335_apsta_b0.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/etc/firmware/fw_bcm4335_p2p_b0.bin"

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1946156032
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27917287424
BOARD_CACHEIMAGE_PARTITION_SIZE := 671087616
BOARD_FLASH_BLOCK_SIZE := 131072

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USES_MMCUTILS := true

# Skip droiddoc build to save build time
BOARD_SKIP_ANDROID_DOC_BUILD := true

# Kernel building
TARGET_KERNEL_SOURCE := kernel/htc/m7
TARGET_KERNEL_CONFIG := tripndroid_m7_defconfig

# Recovery
TARGET_RECOVERY_FSTAB := device/htc/m7/ramdisk/fstab.qcom

# SElinux
BOARD_SEPOLICY_DIRS += \
    device/htc/m7/sepolicy

BOARD_SEPOLICY_UNION += \
    adbd.te \
    file_contexts \
    property_contexts \
    te_macros \
    bridge.te \
    camera.te \
    conn_init.te \
    device.te \
    app.te \
    dhcp.te \
    domain.te \
    file.te \
    kickstart.te \
    init.te \
    mediaserver.te \
    netmgrd.te \
    property.te \
    qmux.te \
    restorecon.te \
    rild.te \
    sensors.te \
    system.te \
    tee.te \
    ueventd.te \
    vold.te \
    zygote.te

# inherit from the proprietary version
-include vendor/htc/m7/BoardConfigVendor.mk
