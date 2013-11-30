# Copyright (C) 2013 The CyanogenMod Project
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

# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/lt02wifiue/lt02wifiue-vendor.mk)

# Inherit from lt02wifi-common
$(call inherit-product, device/samsung/lt02wifi-common/lt02wifi-common.mk)

# Expose Irda feature
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/com.sec.feature.irda_service.xml:system/etc/permissions/com.sec.feature.irda_service.xml

# Irda
PRODUCT_PACKAGES += \
    irda.pxa988

# Init file
PRODUCT_PACKAGES += \
    init.pxa988.rc
