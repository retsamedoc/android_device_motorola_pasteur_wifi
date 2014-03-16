# Inherit device configuration
$(call inherit-product, device/motorola/pasteur_wifi/device_pasteur_wifi.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cm_pasteur_wifi
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := pasteur_wifi
PRODUCT_MODEL := Xoom 2
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RELEASE_NAME := XYBOARD
PRODUCT_SFX := wifi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=${PRODUCT_DEVICE}_${PRODUCT_SFX} \
   BUILD_NUMBER=${DATE} \
   TARGET_DEVICE=${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE} \
   BUILD_FINGERPRINT=${PRODUCT_BRAND}/${PRODUCT_DEVICE}_${PRODUCT_SFX}/${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}:${PLATFORM_VERSION}/${BUILD_ID}/${DATE}:user/release-keys \
   PRIVATE_BUILD_DESC="${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}-user ${PLATFORM_VERSION} ${BUILD_ID} ${DATE} release-keys" \
   PRODUCT_BRAND=${PRODUCT_BRAND} \
   BUILD_UTC_DATE= \
   PRODUCT_DEFAULT_LANGUAGE=en \
   PRODUCT_DEFAULT_REGION=US \
