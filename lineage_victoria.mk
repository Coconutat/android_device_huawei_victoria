# Lineage OS自带原生文件
## Common
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

## Device
$(call inherit-product, device/huawei/victoria/device.mk)

## LineageOS
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# 手机厂商信息，可以在手机的prop文件里找到。
# Device identifier
PRODUCT_NAME := lineage_victoria
PRODUCT_DEVICE := victoria
PRODUCT_BRAND := HUAWEI
PRODUCT_MODEL := Huawei P10
PRODUCT_MANUFACTURER := HUAWEI

# 添加 GMS 类型，通常可以在手机的prop文件里找到。
PRODUCT_GMS_CLIENTID_BASE := android-huawei

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=VTR \
    PRIVATE_BUILD_DESC="Victoria-AL00-user 7.0 HUAWEIVictoria-AL00 C00B001 release-keys"

# 手机指纹信息，可以在手机的prop文件里找到。
BUILD_FINGERPRINT := HUAWEI/VTR-AL00/HWVTR:9/HUAWEIVTR-AL00/9.0.1.179:user/release-keys
