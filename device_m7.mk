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

# Call the vendor files
$(call inherit-product, vendor/htc/m7/m7-vendor.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# This device is xxhdpi.  However the platform doesn't
# currently contain all of the bitmaps
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Files needed for boot image
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/ramdisk/fstab.qcom:root/fstab.qcom \
	$(LOCAL_PATH)/ramdisk/init.qcom.rc:root/init.qcom.rc \
	$(LOCAL_PATH)/ramdisk/init.qcom.firmware_links.sh:root/init.qcom.firmware_links.sh \
	$(LOCAL_PATH)/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc

# Increase the HWUI font cache
PRODUCT_PROPERTY_OVERRIDES += \
	ro.hwui.texture_cache_size=128.0f \
	ro.hwui.text_small_cache_width=2048

PRODUCT_PACKAGES += \
	libnetcmdiface

# Misc files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/etc/gps.conf:system/etc/gps.conf \
	$(LOCAL_PATH)/prebuilt/etc/calibration:/system/etc/calibration \
	$(LOCAL_PATH)/prebuilt/etc/calibration_EMEA:/system/etc/calibration_EMEA

# Audio config
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
	$(LOCAL_PATH)/prebuilt/etc/AudioBTIDnew.csv:system/etc/AudioBTIDnew.csvs \
	$(LOCAL_PATH)/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
	$(LOCAL_PATH)/prebuilt/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3

# Media config
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml

# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio_policy.msm8960 \
	audio.primary.msm8960 \
	audio.r_submix.default \
	audio.usb.default \
	libaudio-resampler \
	libaudioparameter \
	tinymix \
	libaudioamp

# Hardware
PRODUCT_PACKAGES += \
	copybit.msm8960 \
	gralloc.msm8960 \
	hwcomposer.msm8960 \
	lights.msm8960 \
	memtrack.msm8960 \
	camera.msm8960 \
	consumerir.msm8960 \
	libgenlock \
	liboverlay

# OMX / EGL
PRODUCT_PACKAGES += \
	libc2dcolorconvert \
	libdivxdrmdecrypt \
	libOmxCore \
	libOmxVdec \
	libOmxVenc \
	libOmxAacEnc \
	libOmxAmrEnc \
	libOmxEvrcEnc \
	libOmxQcelp13Enc \
	libstagefrighthw \
	libdashplayer \
	libI420colorconvert

# GPS
PRODUCT_PACKAGES += \
	libloc_adapter \
	libloc_eng \
	libgps.utils \
	gps.msm8960

# NFC
PRODUCT_PACKAGES += \
	nfc.m7 \
	libnfc \
	libnfc_jni \
	Nfc \
	Tag \
	com.android.nfc_extras

# Wifi
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	$(LOCAL_PATH)/prebuilt/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
	$(LOCAL_PATH)/prebuilt/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

# Misc Packages
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory \
	qrngd \
	libril

# Apps
PRODUCT_PACKAGES += \
	Torch \
	FileManager

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardwardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Permissions NFC
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
	frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
	frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml\
	frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
	$(LOCAL_PATH)/prebuilt/etc/nfcee_access.xml:system/etc/nfcee_access.xml

# Common build properties
PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=200 \
	persist.timed.enable=true \
	dev.pm.dyn_samplingrate=1 \
	lpa.decode=false \
	ro.opengles.version=196608

# Build characteristics setting 
PRODUCT_CHARACTERISTICS := default

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

# Device Naming
PRODUCT_NAME := full_m7
PRODUCT_DEVICE := m7
PRODUCT_BRAND := htc_europe
PRODUCT_MODEL := HTC One

