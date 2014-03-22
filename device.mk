
$(call inherit-product, device/motorola/omap4-common/common.mk)

DEVICE_FOLDER := device/motorola/pasteur_wifi
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_FOLDER)/overlay

# Hardware HALs
PRODUCT_PACKAGES += \
	lights.pasteur \
	sensors.pasteur
	gps.pasteur

#PRODUCT_CHARACTERISTICS := tablet

# Kexec files
PRODUCT_COPY_FILES += \
	$(DEVICE_FOLDER)/init.target.rc:root/init.target.rc \
	$(DEVICE_FOLDER)/kexec/devtree:system/etc/kexec/devtree \
	$(OUT)/ramdisk.img:system/etc/kexec/ramdisk.img \
	$(OUT)/kernel:system/etc/kexec/kernel
#	$(DEVICE_FOLDER)/kernel:kernel

# Prebuilts
PRODUCT_COPY_FILES += \
	$(DEVICE_FOLDER)/media_profiles.xml:system/etc/media_profiles.xml \
	$(DEVICE_FOLDER)/vold.fstab:system/etc/vold.fstab

$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)
$(call inherit-product-if-exists, vendor/motorola/pasteur_wifi/pasteur_wifi-vendor.mk)
$(call inherit-product-if-exists, vendor/motorola/omap4-common/omap4-common-imgtec-vendor-blobs.mk)
