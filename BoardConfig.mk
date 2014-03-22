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

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/motorola/pasteur_wifi/bluetooth

# Kernel
BOARD_KERNEL_CMDLINE := omap_wdt.timer_margin=60 oops=panic trace_buf_size=262144 console=/dev/null rw mem=1024M@0x80000000 vram=8004K,0x81800000 omapfb.vram=0:8000K@0x81800000,1:4K@0x81FD0000 init=/init ip=off mmcparts=mmcblk1:p5(pds),p11(boot),p12(recovery),p13(cdrom),p14(misc),p15(cid),p16(kpanic),p17(system),p18(cache),p19(preinstall),p20(userdata) mot_sst=1 androidboot.serialno=TA606004XC androidboot.bootloader=0x0A74 androidboot.msn=N076SQ22MC androidboot.modelno=MZ615-16 androidboot.carrier=wifi-only
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

TARGET_PREBUILT_KERNEL := device/motorola/pasteur_wifi/kernel
