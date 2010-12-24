#
# Product-specific compile-time definitions.
#

TARGET_BOARD_PLATFORM := msm7k
BOARD_USES_ADRENO_200 := true
HAVE_ADRENO200_FIRMWARE := true
USE_CAMERA_STUB := true
TARGET_USES_2G_VM_SPLIT := true
WITH_JIT := true
ENABLE_JSC_JIT := true
BOARD_GPS_LIBRARIES := libloc

TARGET_GLOBAL_CFLAGS += -mfpu=vfp -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=vfp -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
#TARGET_CPU_ABI := armeabi
#TARGET_ARCH_VARIANT := armv5te
TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := false
TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := aloha

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/etc/wl/rtecdc.bin nvram_path=/etc/wl/nvram.txt config_path=/data/misc/wifi/config"
WIFI_DRIVER_MODULE_NAME     := "wireless"

BOARD_USES_GENERIC_AUDIO := false
#BOARD_USES_QCOM_LIBS := true

BOARD_KERNEL_BASE    := 0x00200000
BOARD_NAND_PAGE_SIZE := 2048

BOARD_KERNEL_CMDLINE := mem=223M console=ttyMSM0,115200n8 androidboot.hardware=aloha

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

TARGET_HARDWARE_3D := false

TARGET_PREBUILT_KERNEL := vendor/lge/aloha/kernel

#USE_PV_WINDOWS_MEDIA := false

#BOARD_NO_PV_AUTHOR_CLOCK := true

#BOARD_BOOTIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00280000)
#BOARD_RECOVERYIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00500000)
#BOARD_SYSTEMIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x04380000)
#BOARD_USERDATAIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x04ac0000)
# The size of a block that can be marked bad.
# BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_EGL_CFG := vendor/lge/aloha/egl.cfg

#TARGET_PRELINK_MODULE := false
