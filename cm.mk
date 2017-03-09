# Release name
PRODUCT_RELEASE_NAME := Wileyfox Spark

$(call inherit-product, device/wileyfox/porridge/device_porridge.mk)

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := porridge
PRODUCT_NAME := cm_porridge
PRODUCT_BRAND := wileyfox
PRODUCT_MODEL :PORRIDGE
PRODUCT_MANUFACTURER := wileyfox
