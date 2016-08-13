$(call inherit-product, device/lge/h811/full_h811.mk)

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/mk/config/nfc_enhanced.mk)

# Overlays (inherit after vendor/mk to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_NAME := mk_h811

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g4" \
    PRODUCT_NAME="g4__tmo_us" \
    BUILD_FINGERPRINT="lge/p1__tmo_us/p1:6.0/MRA58K/152940055675e:user/release-keys" \
    PRIVATE_BUILD_DESC="p1__tmo_us-user 6.0 MRA58K 152940055675e release-keys"
