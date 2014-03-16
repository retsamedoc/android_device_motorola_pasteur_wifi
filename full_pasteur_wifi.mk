# Set wifi-only before it's set by generic_no_telephony.mk
PRODUCT_PROPERTY_OVERRIDES += \
        ro.carrier=wifi-only

# Additional settings used in all AOSP builds
PRODUCT_PROPERTY_OVERRIDES := \
    ro.com.android.dateformat=MM-dd-yyyy

# Put en_US first in the list, so make it default.
PRODUCT_LOCALES := en_US

PRODUCT_PACKAGES := \
	    Gallery

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=pasteur_wifi

# Get the TTS language packs
#$(call inherit-product-if-exists, external/svox/pico/lang/all_pico_languages.mk)
$(call inherit-product-if-exists, external/svox/pico/lang/PicoLangEnUsInSystem.mk)

# Get a list of languages.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/locales_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_small.mk)

# Get everything else from the parent package
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_no_telephony.mk)

# Device Specific 
$(call inherit-product, device/motorola/pasteur_wifi/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_pasteur_wifi
PRODUCT_DEVICE := pasteur_wifi
PRODUCT_BRAND := Motorola
PRODUCT_MANUFACTURER := Motorola
PRODUCT_MODEL := Motorola Xyboard
