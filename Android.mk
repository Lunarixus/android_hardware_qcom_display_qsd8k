LOCAL_PATH := $(call my-dir)
# TODO:  Find a better way to separate build configs for ADP vs non-ADP devices

ifneq ($(filter qsd8k,$(TARGET_BOARD_PLATFORM)),)
  include $(call all-named-subdir-makefiles,qsd8k)
else ifneq ($(filter msm8x84,$(TARGET_BOARD_PLATFORM)),)
  include $(call all-named-subdir-makefiles,msm8084)
else ifneq ($(filter msm8x26,$(TARGET_BOARD_PLATFORM)),)
  include $(call all-named-subdir-makefiles,msm8226)
else ifneq ($(filter msm8992,$(TARGET_BOARD_PLATFORM)),)
  include $(call all-named-subdir-makefiles,msm8994)
else ifneq ($(wildcard $(LOCAL_PATH)/$(TARGET_BOARD_PLATFORM)),)
  include $(call all-named-subdir-makefiles,$(TARGET_BOARD_PLATFORM))
endif
