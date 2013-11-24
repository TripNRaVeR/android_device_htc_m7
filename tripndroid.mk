# Device stuff
$(call inherit-product, device/htc/m7/device_m7.mk)

# Release name
PRODUCT_RELEASE_NAME := m7

# TripNDroid bootanimation
TARGET_BOOTANIMATION_NAME := 1080

$(call inherit-product, vendor/tripndroid/config/gsm.mk)
$(call inherit-product, vendor/tripndroid/config/nfc_enhanced.mk)
$(call inherit-product, vendor/tripndroid/config/common_full_phone.mk)

PRODUCT_NAME :=  tripndroid_m7
PRODUCT_BRAND := htc
PRODUCT_DEVICE := m7
PRODUCT_MODEL := HTC One
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_europe BUILD_FINGERPRINT="htc/htc_europe/m7:4.3/JSS15J/264544.1:user/release-keys" PRIVATE_BUILD_DESC="3.62.401.1 CL264544 release-keys"