# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration for p500.
$(call inherit-product, device/lge/thunderc/thunderc.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Include FM-Radio stuff
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

PRODUCT_NAME := cm_ls670
PRODUCT_BRAND := lge
PRODUCT_DEVICE := LS670
PRODUCT_MODEL := LG-LS670
PRODUCT_MANUFACTURER := LGE


# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusS
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
