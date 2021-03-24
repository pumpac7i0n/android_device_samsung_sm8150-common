LOCAL_PATH := $(call my-dir)

ifneq ($(filter  beyond0qlte beyond1qlte beyond2qlte,$(TARGET_DEVICE)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
