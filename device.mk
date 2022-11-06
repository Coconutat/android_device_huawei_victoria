# 设备树路径
## Device Path
DEVICE_PATH := device/huawei/victoria

# 引用通用信息
# TODO：需要更改
## Inherit common device
$(call inherit-product, device/huawei/hi3660-common/hi3660.mk)


# TODO：需要更改
## Inherit vendor blobs
$(call inherit-product, vendor/huawei/victoria/victoria-vendor.mk)

# TODO：需要更改
# Audio # 前半部分来自默认设置，后半来自Vendor blobs
PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/volume/default_volume_tables.xml

# 手机像素密度，分辨率
# Display
TARGET_SCREEN_DENSITY := 432
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
# AAPT
PRODUCT_AAPT_CONFIG := normal xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# TODO：需要更改
# Init
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/init/victoria.rc:$(TARGET_COPY_OUT_ODM)/etc/init/victoria.rc



# Overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service


# PRODUCT_SHIPPING_API_LEVEL
# SRC_TARGET_DIR定义位置是‘build/target‘，此处是元加密数据API定义。
# API级别要填写设备上已经启用的API级别。
# 此属性等价于直接写 PRODUCT_SHIPPING_API_LEVEL := XX
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# dalvik 虚拟机内存分配文件，依照手机实际内存选择。
# 4096MB(4GB)就选hone-xhdpi-4096-dalvik-heap.mk.
# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)
