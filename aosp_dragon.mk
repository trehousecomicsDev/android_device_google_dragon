#
# Copyright (C) 2020 The Android Open-Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit from dragon device
$(call inherit-product, device/google/dragon/device.mk)

TARGET_GAPPS_ARCH             := arm64

# Boot animation
TARGET_SCREEN_HEIGHT          := 2560
TARGET_SCREEN_WIDTH           := 1800
TARGET_BOOTANIMATION_HALF_RES := true

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE                := dragon
PRODUCT_NAME                  := aosp_dragon
PRODUCT_BRAND                 := Google
PRODUCT_MODEL                 := Pixel C
PRODUCT_MANUFACTURER          := google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=dragon \
    PRIVATE_BUILD_DESC="ryu-user 8.1.0 OPM1.171019.016 4503492 release-keys"

BUILD_FINGERPRINT := google/ryu/dragon:8.1.0/OPM1.171019.016/4503492:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/ryu/dragon:8.1.0/OPM1.171019.016/4503492:user/release-keys
    
