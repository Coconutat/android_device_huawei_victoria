# 引用设备名
PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/lineage_victoria.mk


# 早些版本增加构建设备名称是在vendorsetup.sh里，如今在这里。
COMMON_LUNCH_CHOICES := \
    lineage_victoria-eng \
    lineage_victoria-user \
    lineage_victoria-userdebug
