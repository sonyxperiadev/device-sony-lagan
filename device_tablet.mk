# Include common and then apply telephony baseline
#
$(call inherit-product, device/sony/lagan/device_common.mk)

############################################################################################
#
# We still need the ril, apn and some other stuff, so copy that from full_base_telephony.mk
# If you look at that file, you'll see that this is the order things are done.
#
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.com.android.dataroaming=true

PRODUCT_PACKAGES += rild
#
############################################################################################

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product-if-exists, vendor/google/products/gms.mk)
