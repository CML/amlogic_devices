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

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/amlogic/sirius/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Modules
PRODUCT_COPY_FILES := \
	$(LOCAL_KERNEL):kernel \
	device/amlogic/sirius/prebuilt/modules/mali.ko:system/lib/modules/mali.ko \
	device/amlogic/sirius/prebuilt/modules/ump.ko:system/lib/modules/ump.ko

# Inherit generic amlogic device
$(call inherit-product, device/amlogic/aml-common/aml-common.mk)

# Input device calibration files
PRODUCT_COPY_FILES += \
	device/amlogic/sirius/prebuilt/Goodix_TouchScreen_of_Guitar.idc:system/usr/idc/Goodix_TouchScreen_of_Guitar.idc

# Gsensor
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.gsensorposition=3
