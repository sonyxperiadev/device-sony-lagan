
DEVICE_PACKAGE_OVERLAYS += device/sony/lagan/overlay

PRODUCT_PACKAGES += \
    Nfc \
    Tag \
    alsa.msm8960 \
    audio.a2dp.default \
    audio.primary.msm8960 \
    audio.r_submix.default \
    audio.usb.default \
    audio_policy.msm8960 \
    com.android.nfc_extras \
    e2fsck \
    libaudio-resampler \
    libnfc \
    libnfc_jni \
    gps.msm8960 \
    libgps.utils \
    libloc_adapter \
    libloc_eng \
    sensors.default \
    lights.sony

PRODUCT_TAGS += dalvik.gc.type-precise

SONY_ROOT = device/sony/lagan/rootdir
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/fstab.sony:root/fstab.sony \
    $(SONY_ROOT)/init.sony.rc:root/init.sony.rc \
    $(SONY_ROOT)/init.sony.usb.rc:root/init.sony.usb.rc \
    $(SONY_ROOT)/system/etc/apns-conf.xml:system/etc/apns-conf.xml \
    $(SONY_ROOT)/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(SONY_ROOT)/system/etc/gps.conf:system/etc/gps.conf \
    $(SONY_ROOT)/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(SONY_ROOT)/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(SONY_ROOT)/system/etc/nfcee_access.xml:system/etc/nfcee_access.xml \
    $(SONY_ROOT)/system/etc/snd_soc_msm/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
    $(SONY_ROOT)/system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
    $(SONY_ROOT)/system/etc/vold.fstab:system/etc/vold.fstab \
    $(SONY_ROOT)/system/usr/idc/clearpad.idc:system/usr/idc/clearpad.idc \
    $(SONY_ROOT)/system/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl:system/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl \
    $(SONY_ROOT)/system/usr/keylayout/clearpad.kl:system/usr/keylayout/clearpad.kl \
    $(SONY_ROOT)/system/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(SONY_ROOT)/system/usr/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    $(SONY_ROOT)/system/usr/keylayout/mhl-rcp.kl:system/usr/keylayout/mhl-rcp.kl \
    $(SONY_ROOT)/system/usr/keylayout/pmic8xxx_pwrkey.kcm:system/usr/keylayout/pmic8xxx_pwrkey.kcm \
    $(SONY_ROOT)/system/usr/keylayout/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl \
    $(SONY_ROOT)/ueventd.sony.rc:root/ueventd.sony.rc \

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, vendor/google/products/gms.mk)
