#ARCH
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true

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

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
#WPA_SUPPLICANT_VERSION      := VER_0_6_X

# Vold and FS
BOARD_VOLD_MAX_PARTITIONS := 10
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"
BOARD_UMS_2ND_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun1/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun%d/file"
BOARD_USES_AML_MTDUTILS:=true

#OTHER OPTIONS FOR PERFORMANCE
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
COMMON_GLOBAL_CFLAGS += -DSURFACEFLINGER_FORCE_SCREEN_RELEASE
BOARD_USE_SKIA_LCDTEXT := true
