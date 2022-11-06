
LOCAL_PATH := $(call my-dir)

ifneq ($(filter victoria, $(TARGET_DEVICE)),)
include $(call all-makefiles,$(LOCAL_PATH))
endif
