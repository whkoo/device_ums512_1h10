LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),ums512_1h10)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
