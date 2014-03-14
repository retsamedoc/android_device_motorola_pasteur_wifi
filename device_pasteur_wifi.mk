
$(call inherit-product, device/motorola/omap4-common/common.mk)

DEVICE_FOLDER := device/motorola/pasteur_wifi
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_FOLDER)/overlay
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_pasteur_wifi
PRODUCT_DEVICE := pasteur_wifi

# Hardware HALs
#PRODUCT_PACKAGES += \
	power.pasteur \
	camera.pasteur \
	lights.pasteur \
	hwcomposer.pasteur

# Modem
#PRODUCT_PACKAGES += \
	nc \
	Stk \
	libreference-cdma-sms

# Kexec files
PRODUCT_COPY_FILES += \
	$(DEVICE_FOLDER)/kernel:kernel
#	$(DEVICE_FOLDER)/init.target.rc:root/init.target.rc \
	$(DEVICE_FOLDER)/kexec/devtree:system/etc/kexec/devtree \
	$(OUT)/ramdisk.img:system/etc/kexec/ramdisk.img \
	$(OUT)/kernel:system/etc/kexec/kernel

# Prebuilts
PRODUCT_COPY_FILES += \
	$(DEVICE_FOLDER)/media_profiles.xml:system/etc/media_profiles.xml

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)
$(call inherit-product, vendor/motorola/pasteur_wifi/pasteur_wifi-vendor.mk)
$(call inherit-product, vendor/motorola/omap4-common/omap4-common-imgtec-vendor-blobs.mk)
