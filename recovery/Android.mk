LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES += bootable/recovery
LOCAL_SRC_FILES := recovery_ui_lagan.cpp
LOCAL_MODULE := librecovery_ui_lagan

include $(BUILD_STATIC_LIBRARY)

