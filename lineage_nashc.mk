#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/realme/nashc/device.mk)

# Addons
TARGET_HAS_UDFPS := true

# Define rear camera specs (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 64,8,2,2  # Example: 50MP + 48MP

# Define front camera specs
AXION_CAMERA_FRONT_INFO := 16  # Example: 42MP

# Maintainer name (use "_" for spaces, e.g., "rmp_22" → "rmp 22" in UI)
AXION_MAINTAINER := Rakhshan

# Processor name (use "_" for spaces)
AXION_PROCESSOR := Mediatek_Helio_G95

# Define small and big core groups
AXION_CPU_SMALL_CORES := 0,1,2,3,4,5
AXION_CPU_BIG_CORES := 6,7 (builders can exclude prime clusters here)

AXION_CPU_BG := 0-1
# Background cores used for foreground cpusets
AXION_CPU_FG := 0-7
# CPU cores that will be used when limiting other cpusets except top-app
AXION_CPU_LIMIT_BG := 0-3
# Wether to enable debugging for adb logcat purposes
AXION_DEBUGGING_ENABLED := true

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_nashc
PRODUCT_DEVICE := nashc
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := Realme
PRODUCT_MODEL := RMX3085

TARGET_BUILD_GAPPS=true

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=realme/RMX3085/RMX3085L1:13/SP1A.210812.016/R.1913398-178f6:user/release-keys \
    DeviceName=RMX3085L1 \
    DeviceProduct=RMX3085 \
    SystemDevice=RMX3085L1 \
    SystemName=RMX3085
