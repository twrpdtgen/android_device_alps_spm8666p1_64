#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from spm8666p1_64 device
$(call inherit-product, device/alps/spm8666p1_64/device.mk)

PRODUCT_DEVICE := spm8666p1_64
PRODUCT_NAME := omni_spm8666p1_64
PRODUCT_BRAND := alps
PRODUCT_MODEL := 3VS121
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_spm8666p1_64-userdebug 9 PQ2A.190405.003 eng.zhangd.20230329.100446 test-keys"

BUILD_FINGERPRINT := alps/full_spm8666p1_64/spm8666p1_64:9/PQ2A.190405.003/zhangdan03291014:userdebug/test-keys
