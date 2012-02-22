$(call inherit-product, device/lge/thunderc/full_thunderc.mk)

#$(call inherit-product, device/lge/thunderc/device.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_NAME := cm_thunderc
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LS670
PRODUCT_MANUFACTURER := LGE

# Release name and versioning
PRODUCT_RELEASE_NAME := thunderc

PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_ID=GWK74 \
	PRODUCT_NAME=${PRODUCT_MODEL} \
	BUILD_DISPLAY_ID="GWK74 $(shell date +%m%d%Y)" \
	BUILD_FINGERPRINT=google/soju/crespo:4.0.3/GWK74/185293:user/release-keys \
	PRIVATE_BUILD_DESC="soju-user 4.0.3 GWK74 185293 release-keys" \
	BUILD_NUMBER=${DATE}
	TARGET_BUILD_TYPE=user
