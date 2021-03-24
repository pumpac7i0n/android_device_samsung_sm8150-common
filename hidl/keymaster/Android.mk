#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := hardware/samsung/hidl/keymaster

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.keymaster@4.0-service.samsung-sm8150
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true

LOCAL_MODULE_PATH_32 := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PLATFORM_VNDK_VERSION)/lib
LOCAL_MODULE_PATH_64 := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PLATFORM_VNDK_VERSION)/lib64
LOCAL_MODULE_RELATIVE_PATH := hw

LOCAL_SRC_FILES := \
    service.cpp

LOCAL_SHARED_LIBRARIES := \
    android.hardware.keymaster@4.0 \
    libbase \
    libcutils \
    libhardware \
    libhidlbase \
    libhidltransport \
    libkeymaster4 \
    liblog \
    libskeymaster4device \
    libutils

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.keymaster@4.0-service.samsung.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS :=ETC

LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PLATFORM_VNDK_VERSION)/etc/init

LOCAL_SRC_FILES := $(LOCAL_MODULE)

include $(BUILD_PREBUILT)
