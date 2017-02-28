# This file is autogenerated by hidl-gen. Do not edit manually.

LOCAL_PATH := $(call my-dir)

################################################################################

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.automotive.vehicle@2.1-java
LOCAL_MODULE_CLASS := JAVA_LIBRARIES

intermediates := $(call local-generated-sources-dir, COMMON)

HIDL := $(HOST_OUT_EXECUTABLES)/hidl-gen$(HOST_EXECUTABLE_SUFFIX)

LOCAL_JAVA_LIBRARIES := \
    android.hardware.automotive.vehicle@2.0-java \
    android.hidl.base@1.0-java \


#
# Build types.hal (VehicleProperty)
#
GEN := $(intermediates)/android/hardware/automotive/vehicle/V2_1/VehicleProperty.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.automotive.vehicle@2.1::types.VehicleProperty

$(GEN): $(LOCAL_PATH)/types.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IVehicle.hal
#
GEN := $(intermediates)/android/hardware/automotive/vehicle/V2_1/IVehicle.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IVehicle.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.automotive.vehicle@2.1::IVehicle

$(GEN): $(LOCAL_PATH)/IVehicle.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)
include $(BUILD_JAVA_LIBRARY)


################################################################################

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.automotive.vehicle@2.1-java-static
LOCAL_MODULE_CLASS := JAVA_LIBRARIES

intermediates := $(call local-generated-sources-dir, COMMON)

HIDL := $(HOST_OUT_EXECUTABLES)/hidl-gen$(HOST_EXECUTABLE_SUFFIX)

LOCAL_STATIC_JAVA_LIBRARIES := \
    android.hardware.automotive.vehicle@2.0-java-static \
    android.hidl.base@1.0-java-static \


#
# Build types.hal (VehicleProperty)
#
GEN := $(intermediates)/android/hardware/automotive/vehicle/V2_1/VehicleProperty.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.automotive.vehicle@2.1::types.VehicleProperty

$(GEN): $(LOCAL_PATH)/types.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IVehicle.hal
#
GEN := $(intermediates)/android/hardware/automotive/vehicle/V2_1/IVehicle.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IVehicle.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.automotive.vehicle@2.1::IVehicle

$(GEN): $(LOCAL_PATH)/IVehicle.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)
include $(BUILD_STATIC_JAVA_LIBRARY)



include $(call all-makefiles-under,$(LOCAL_PATH))
