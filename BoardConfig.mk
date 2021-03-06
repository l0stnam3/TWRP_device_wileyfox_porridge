# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6735
TARGET_NO_BOOTLOADER := true
 
# Architecture
TARGET_BOARD_PLATFORM := mt6735
TARGET_ARCH := arm64
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := generic
TARGET_BOARD_SUFFIX := _64
 
#32 bit
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
 
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true
 
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_SMP := true
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true
TARGET_CPU_CORTEX_A53 := true
 
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_NO_FACTORYIMAGE := true
 
TARGET_CPU_ABI_LIST_64_BIT := $(TARGET_CPU_ABI)
TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_2ND_CPU_ABI),$(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI_LIST_64_BIT),$(TARGET_CPU_ABI_LIST_32_BIT)
 
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_USERIMAGES_USE_EXT4 := true

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x03f88000

# prebuild kernel as fallback
TARGET_PREBUILT_KERNEL := device/wileyfox/porridge/kernel

#extracted from /proc/partinfo
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1107296256
BOARD_CACHEIMAGE_PARTITION_SIZE := 444596224

#pagesize * 64
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --tags_offset 0x0df88000

# Build an EXT4 ROM image
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_NO_FACTORYIMAGE := true

# system.prop
TARGET_SYSTEM_PROP := device/wileyfox/porridge/system.prop

# Mediatek flags
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

# SELinux
BOARD_SEPOLICY_DIRS := \
		device/wileyfox/porridge/sepolicy

BOARD_SEPOLICY_UNION := \
		recovery.te

# recovery__________TWRP 3.0.3

TARGET_RECOVERY_FSTAB := device/wileyfox/porridge/recovery.fstab
BOARD_HAS_NO_SELECT_BUTTON := true
TW_THEME := portrait_hdpi
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_DEFAULT_LANGUAGE := ru
#TW_DEVICE_VERSION := 0 by hyperion70, sorry hyperion70 :)
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness/
TW_MAX_BRIGHTNESS := 255
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp

# Hack for build
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
