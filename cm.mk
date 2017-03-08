# Release name
PRODUCT_RELEASE_NAME := SMART Surf LTE

$(call inherit-product, device/MTS/SMART_Surf_4G/device_SMART_Surf_4G.mk)

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := SMART_Surf_4G
PRODUCT_NAME := cm_SMART_Surf_4G
PRODUCT_BRAND := MTS
PRODUCT_MODEL := SMART_Surf_4G
PRODUCT_MANUFACTURER := MTS
