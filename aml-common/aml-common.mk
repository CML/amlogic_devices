#
# Copyright (C) 2011 The Android Open-Source Project
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
DEVICE_PACKAGE_OVERLAYS := device/amlogic/aml-common/overlay

PRODUCT_PACKAGES := \
	audio.a2dp.default \
	libaudioutils \
	libtinyalsa

PRODUCT_COPY_FILES := \
	$(LOCAL_KERNEL):kernel \
	device/amlogic/aml-common/etc/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Live Wallpapers
PRODUCT_PACKAGES += \
	LiveWallpapers \
	LiveWallpapersPicker \
	VisualizationWallpapers \
	librs_jni

# Key maps
PRODUCT_COPY_FILES += \
	device/amlogic/aml-common/prebuilt/set_display_mode.sh:system/bin/set_display_mode.sh \
	device/amlogic/aml-common/prebuilt/adc_keypad.kl:system/usr/keylayout/adc_keypad.kl \
	device/amlogic/aml-common/prebuilt/aml_keypad.kl:system/usr/keylayout/aml_keypad.kl \
	device/amlogic/aml-common/prebuilt/jogball.kl:system/usr/keylayout/jogball.kl

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
	frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

#etc files
PRODUCT_COPY_FILES += $(shell find device/amlogic/aml-common/etc -name '*' -printf '%p:system/etc/%f ')

#Power off Battery charge
PRODUCT_COPY_FILES += $(shell find device/amlogic/aml-common/battery_pic -name '*' -printf '%p:system/resource/battery_pic/%f ')

PRODUCT_PACKAGES += \
	librs_jni

# for bugmailer
PRODUCT_PACKAGES += send_bug
PRODUCT_COPY_FILES += \
	system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
	system/extras/bugmailer/send_bug:system/bin/send_bug

$(call inherit-product, frameworks/base/build/tablet-dalvik-heap.mk)

#complete build.prop configuration
$(call inherit-product, device/amlogic/aml-common/system.prop.mk)

# Inherit propietary blobs
$(call inherit-product-if-exists, vendor/amlogic/device-vendor-blobs.mk)
