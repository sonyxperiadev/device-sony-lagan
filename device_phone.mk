# Include common and then apply telephony baseline
#
$(call inherit-product, device/sony/lagan/device_common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, vendor/google/products/gms.mk)
