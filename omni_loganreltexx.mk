# Copyright (C) 2013-2016, The CyanogenMod Project
# Copyright (C) 2019, JDCTeam
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some QCOM configuration tools
$(call inherit-product, device/qcom/common/Android.mk)

# Inherit some common OmniROM stuff.
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_NAME := omni_loganreltexx
PRODUCT_DEVICE := loganreltexx
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-S7275R
