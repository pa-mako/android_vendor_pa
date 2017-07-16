ifeq (pa_mako,$(TARGET_PRODUCT))

# Use AOSP Camera Application
TARGET_USES_AOSP_CAMERA := true

# Get the defaults going.
TARGET_BOOT_ANIMATION_RES := 720

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Paranoid Android platform
include vendor/pa/main.mk

# Inherit device configuration
$(call inherit-product, device/lge/mako/full_mako.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mako
PRODUCT_NAME := pa_mako
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:5.1.1/LMY48T/2237560:user/release-keys \
    PRIVATE_BUILD_DESC="occam-user 5.1.1 LMY48T 2237560 release-keys"

endif
