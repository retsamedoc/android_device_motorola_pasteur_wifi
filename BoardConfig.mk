# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from common
-include device/motorola/omap4-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/motorola/pasteur_wifi/BoardConfigVendor.mk

# Processor
TARGET_BOOTLOADER_BOARD_NAME := pasteur_wifi

# Camera
USE_CAMERA_STUB := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/motorola/pasteur_wifi/bluetooth

# Kernel
#BOARD_KERNEL_CMDLINE := root=/dev/ram0 rw mem=1023M@0x80000000 console=null vram=10300K omapfb.vram=0:8256K,1:4K,2:2040K init=/init ip=off mmcparts=mmcblk1:p7(pds),p8(utags),p14(boot),p15(recovery),p16(cdrom),p17(misc),p18(cid),p19(kpanic),p20(system),p21(cache),p22(preinstall),p23(webtop),p24(userdata),p25(emstorage) mot_sst=1 androidboot.bootloader=0x0A74
#BOARD_KERNEL_BASE := 0x80000000
#BOARD_PAGE_SIZE := 0x4096
BOARD_KERNEL_CMDLINE := omap_wdt.timer_margin=60 oops=panic trace_buf_size=262144 console=/dev/null rw mem=1024M@0x80000000 vram=8004K,0x81800000 omapfb.vram=0:8000K@0x81800000,1:4K@0x81FD0000 init=/init ip=off mmcparts=mmcblk1:p5(pds),p11(boot),p12(recovery),p13(cdrom),p14(misc),p15(cid),p16(kpanic),p17(system),p18(cache),p19(preinstall),p20(userdata) mot_sst=1 androidboot.serialno=TA606004XC androidboot.bootloader=0x0A74 androidboot.msn=N076SQ22MC androidboot.modelno=MZ615-16 androidboot.carrier=wifi-only
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/motorola/pasteur_wifi/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
