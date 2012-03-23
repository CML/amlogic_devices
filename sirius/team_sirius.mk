# Release name
PRODUCT_RELEASE_NAME := Sirius

# Inherit device configuration
$(call inherit-product, vendor/osr/config/common_full_tablet_wifionly.mk)

$(call inherit-product, vendor/osr/config/asian.mk)

$(call inherit-product, device/amlogic/sirius/full_sirius.mk)

#test in ICS-RC
PRODUCT_PACKAGES += \
    ROMControl

## Device identifier. This must come after all inclusions
PRODUCT_NAME := team_sirius
PRODUCT_BRAND := google
PRODUCT_DEVICE := sirius
PRODUCT_MODEL := P4D Sirius
PRODUCT_MANUFACTURER := Amlogic

PRODUCT_CHARACTERISTICS := tablet

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=Sirius BUILD_DISPLAY_ID=IML77 BUILD_FINGERPRINT="motorola/tervigon/wingray:4.0.3/IML77/239789:user/release-keys" PRIVATE_BUILD_DESC="tervigon-user 4.0.3 IML77 239789 release-keys"

PRODUCT_PACKAGE_OVERLAYS += device/nvsbl/sirius/overlay

# Inherit drm blobs
#-include vendor/osr/config/common_drm.mk

# Inherit Facelock blobs
#-include vendor/osr/config/common_facelock.mk

# Inherit Gapps blobs
-include vendor/osr/config/common_gapps.mk

PRODUCT_LOCALES += hdpi

PRODUCT_PACKAGES += DSPManager

VENDOR_INCLUDE_MUSICAPP := true
