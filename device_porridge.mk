LOCAL_PATH := device/wileyfox/porridge

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/kernel:kernel

# Time Zone data for Recovery
PRODUCT_COPY_FILES += bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata
