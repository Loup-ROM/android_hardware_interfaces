LOCAL_PATH := $(call my-dir)

################################################################################
include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.configstore@1.1-service
# seccomp is not required for coverage build.
ifneq ($(NATIVE_COVERAGE),true)
LOCAL_REQUIRED_MODULES_arm64 := configstore@1.1.policy
endif
LOCAL_VENDOR_MODULE := true
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_INIT_RC := android.hardware.configstore@1.1-service.rc
LOCAL_SRC_FILES:= service.cpp

include $(LOCAL_PATH)/surfaceflinger.mk

LOCAL_SHARED_LIBRARIES := \
    libhidlbase \
    libhidltransport \
    libhwbinder \
    libbase \
    libhwminijail \
    liblog \
    libutils \
    libcutils\
    vendor.display.config@1.7 \
    android.hardware.configstore@1.0 \
    android.hardware.configstore@1.1

ifeq ($(TARGET_ARCH),arm)
LOCAL_CFLAGS += -DARCH_ARM_32
endif

include $(BUILD_EXECUTABLE)

# seccomp filter for configstore
ifeq ($(TARGET_ARCH), $(filter $(TARGET_ARCH), arm64))
include $(CLEAR_VARS)
LOCAL_MODULE := configstore@1.1.policy
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc/seccomp_policy
LOCAL_SRC_FILES := seccomp_policy/configstore@1.1-$(TARGET_ARCH).policy
include $(BUILD_PREBUILT)
endif

# disable configstore
include $(CLEAR_VARS)
LOCAL_MODULE := disable_configstore
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SRC_FILES:= disable_configstore.cpp
LOCAL_OVERRIDES_MODULES := android.hardware.configstore@1.1-service
LOCAL_VENDOR_MODULE := true
LOCAL_UNINSTALLABLE_MODULE := true

include $(BUILD_EXECUTABLE)
