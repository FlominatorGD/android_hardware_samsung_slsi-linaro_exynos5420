# Copyright (C) 2013 The Android Open Source Project
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

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE := libhwjpeg
LOCAL_PROPRIETARY_MODULE := true

LOCAL_C_INCLUDES := \
	$(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include \
	$(LOCAL_PATH)/../include \
	$(TOP)/hardware/samsung_slsi-linaro/exynos/libexynosutils \
	$(TOP)/hardware/samsung_slsi-linaro/exynos/include

LOCAL_ADDITIONAL_DEPENDENCIES += \
	$(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

LOCAL_SRC_FILES := \
	ExynosJpegEncoder.cpp \
	ExynosJpegDecoder.cpp \
	ExynosJpegBase.cpp \
	ExynosJpegBase_Dependence.cpp

LOCAL_SHARED_LIBRARIES := \
	libutils \
	liblog \
	libexynosutils \
	libion_exynos

include $(BUILD_SHARED_LIBRARY)
