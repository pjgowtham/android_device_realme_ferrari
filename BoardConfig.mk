#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8450-common/BoardConfigCommon.mk

DEVICE_PATH := device/realme/ferrari

# Biometrics (Face)
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.biometrics.face.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.biometrics.face.xml

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_DENSITY := xxhdpi
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 126

# VINTF
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    $(DEVICE_PATH)/vintf/compatibility_matrix.xml

# Include the proprietary files BoardConfig.
include vendor/realme/ferrari/BoardConfigVendor.mk
