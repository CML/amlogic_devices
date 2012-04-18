# Release name
PRODUCT_RELEASE_NAME := Sirius

# Inherit device configuration
$(call inherit-product, vendor/osr/products/asian.mk)

$(call inherit-product, vendor/osr/products/hdpi.mk)

$(call inherit-product, vendor/osr/products/high_tablet_device.mk)

$(call inherit-product, device/amlogic/sirius/full_sirius.mk)

#test in ICS-RC
PRODUCT_PACKAGES += \
    ROMControl

## Device identifier. This must come after all inclusions
PRODUCT_NAME := osr_sirius
PRODUCT_BRAND := google
PRODUCT_DEVICE := sirius
PRODUCT_MODEL := P4D Sirius
PRODUCT_MANUFACTURER := Amlogic
PRODUCT_VERSION_MAINTENANCE := 1

PRODUCT_CHARACTERISTICS := tablet

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=aml8726m BUILD_FINGERPRINT="motorola/tervigon/wingray:4.0.4/IMM76/292727:user/release-keys" PRIVATE_BUILD_DESC="tervigon-user 4.0.4 IMM76 292727 release-keys"

PRODUCT_PACKAGE_OVERLAYS += device/nvsbl/sirius/overlay

# Inherit Gapps blobs
-include vendor/osr/products/minimal_gapps.mk

# Inherit Flash Player
-include vendor/osr/products/flashplayer.mk

PRODUCT_LOCALES := es_ES ca_ES zh_CN ja_JP ko_KR ru_RU en_US en_GB fr_FR it_IT de_DE hdpi
