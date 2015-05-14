# Copyright 2014 The Android Open Source Project
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

$(call inherit-product, device/sony/lagan/device_common.mk)

# We are tablet
PRODUCT_CHARACTERISTICS := tablet

# We need hardware
PRODUCT_COPY_FILES += frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

# We need the ril and some properties, so copy that from full_base_telephony.mk
# If you look at that file, you'll see that this is the order things are done.
#
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.com.android.dataroaming=true

PRODUCT_PACKAGES += rild

# Carry on
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
