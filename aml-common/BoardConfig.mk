#ARCH
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_ARMV7A := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

#Generic
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := amlogic
TARGET_BOOTLOADER_BOARD_NAME := m1ref

#Camera
USE_CAMERA_STUB := true

#Video
BOARD_EGL_CFG := device/amlogic/aml-common/prebuilt/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_USE_SKIA_LCDTEXT := true

#HW composer
BOARD_USES_HWCOMPOSER := true

# Wifi/BT
WPA_SUPPLICANT_VERSION := VER_0_5_X
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT

# Rotation Patch
BOARD_HAVE_CUSTOM_PANEL_AMLOGIC := true

# Vold and FS
BOARD_VOLD_MAX_PARTITIONS := 10
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"
BOARD_UMS_2ND_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun1/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun%d/file"
BOARD_USES_AML_MTDUTILS:=true
