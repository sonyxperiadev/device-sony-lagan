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

SOMC_PLATFORM := fusion3

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/lagan/overlay

SONY_ROOT = device/sony/lagan/rootdir
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/fstab.lagan:root/fstab.lagan \
    $(SONY_ROOT)/init.lagan.rc:root/init.lagan.rc \
    $(SONY_ROOT)/init.lagan.pwr.rc:root/init.lagan.pwr.rc \
    $(SONY_ROOT)/init.lagan.usb.rc:root/init.lagan.usb.rc \
    $(SONY_ROOT)/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(SONY_ROOT)/system/etc/gps.conf:system/etc/gps.conf \
    $(SONY_ROOT)/system/etc/sap.conf:system/etc/sap.conf \
    $(SONY_ROOT)/system/etc/init.lagan.bt.sh:system/etc/init.lagan.bt.sh \
    $(SONY_ROOT)/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(SONY_ROOT)/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(SONY_ROOT)/system/etc/nfcee_access.xml:system/etc/nfcee_access.xml \
    $(SONY_ROOT)/system/etc/snd_soc_msm/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
    $(SONY_ROOT)/system/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(SONY_ROOT)/system/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(SONY_ROOT)/system/usr/idc/clearpad.idc:system/usr/idc/clearpad.idc \
    $(SONY_ROOT)/system/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl:system/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl \
    $(SONY_ROOT)/system/usr/keylayout/clearpad.kl:system/usr/keylayout/clearpad.kl \
    $(SONY_ROOT)/system/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(SONY_ROOT)/system/usr/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    $(SONY_ROOT)/system/usr/keylayout/mhl-rcp.kl:system/usr/keylayout/mhl-rcp.kl \
    $(SONY_ROOT)/system/usr/keylayout/pmic8xxx_pwrkey.kcm:system/usr/keylayout/pmic8xxx_pwrkey.kcm \
    $(SONY_ROOT)/system/usr/keylayout/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl \
    $(SONY_ROOT)/ueventd.lagan.rc:root/ueventd.lagan.rc \
    $(SONY_ROOT)/init.recovery.lagan.rc:root/init.recovery.lagan.rc

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.google.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

#Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm8960 \
    audio.r_submix.default \
    audio.usb.default \
    audio_policy.msm8960 \
    libaudio-resampler \
    libacdbloader \
    libacdbmapper \
    libaudcal \
    libaudioalsa \
    libdiag

# for audio.primary.msm8960
PRODUCT_PACKAGES += \
    libtinyalsa \
    libtinycompress \
    libaudioroute

#GFX
PRODUCT_PACKAGES += \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    memtrack.msm8960 \
    libgenlock \
    libqdutils \
    libqdMetaData

#lights
PRODUCT_PACKAGES += \
    lights.lagan

#NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    libnfc_jni \
    libnfc \
    Nfc

#GPS
PRODUCT_PACKAGES += \
    libloc_api_v02 \
    libloc_adapter \
    libloc_eng \
    libgps.utils \
    gps.msm8960

#Wifi
PRODUCT_PACKAGES += \
    hostapd \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf \
    p2p_supplicant.conf

#GPS
PRODUCT_PACKAGES += \
    libloc_api_v02 \
    libloc_adapter \
    libloc_eng \
    libgps.utils \
    gps.msm8960

#Sensors
PRODUCT_PACKAGES += \
    sensors.default

#Misc
PRODUCT_PACKAGES += \
    libmiscta \
    libta \
    tad_static \
    ta_qmi_client \
    ta2bin

#QMI
PRODUCT_PACKAGES += \
    libqcci_legacy \
    libqmi_csvt_srvc \
    libqmi_client_qmux \
    libqmiservices \
    libqmiservices_ext \
    libqmi \
    libidl \
    qmiproxy \
    qmuxd

#OSS
PRODUCT_PACKAGES += \
    thermanager \
    wcnss_addr \
    bt_addr

#Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images \

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

PRODUCT_PACKAGES += \
    Dialer \
    Email \
    Exchange2 \
    InCallUI \
    Launcher3

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck

# Platform specific tags
#
PRODUCT_TAGS += dalvik.gc.type-precise

# APN list
PRODUCT_COPY_FILES += device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Platform specific properties
#
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.bt.hci_transport=smd

# Platform specific default properties
#
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp


