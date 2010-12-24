#
# Copyright (C) 2009 The Android Open-Source Project
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

# To be included directly by a product makefile; do not use inherit-product.
PRODUCT_PACKAGES := \
    Email \
    IM \
    VoiceDialer \
    NotePad \
    librs_jni 
    
DEVICE_PACKAGE_OVERLAYS := vendor/lge/aloha/overlay

# aloha uses high-density artwork where available
PRODUCT_LOCALES += hdpi

#NO_DEFAULT_SOUNDS := true

PRODUCT_PROPERTY_OVERRIDES := \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=20 \
    ro.com.android.dataroaming=true \
    ro.config.ringtone=DonMessWivIt.ogg \
    ro.config.notification_sound=pixiedust.ogg \
    ro.config.alarm_alert=Alarm_Classic.ogg \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-verizon \
    keyguard.no_require_sim=true \
    ro.setupwizard.mode=OPTIONAL \
    net.bt.name=Android \
    ro.com.google.locationfeatures=1 \
    ro.com.google.gmsversion=2.1_r1 \
    ro.config.sync=yes \
    dalvik.vm.stack-trace-file=/data/anr/traces.txt \
    ro.media.dec.aud.wma.enabled=1 \
    ro.media.dec.vid.wmv.enabled=1 \
    ro.kernel.android.checkjni=1 

PRODUCT_COPY_FILES := \
   vendor/lge/aloha/vold.conf:system/etc/vold.conf \
   vendor/lge/aloha/proprietary/AudioFilter.csv:system/etc/AudioFilter.csv \
   vendor/lge/aloha/proprietary/gps.conf:system/etc/gps.conf \
   vendor/lge/aloha/apns-conf.xml:system/etc/apns-conf.xml \
   vendor/lge/aloha/proprietary/system/bin/BCM4329B1_002.002.023.0313.0333.hcd:system/bin/BCM4329B1_002.002.023.0313.0333.hcd \
   vendor/lge/aloha/proprietary/modules/wireless.ko:system/lib/modules/wireless.ko \
   vendor/lge/aloha/proprietary/wl/nvram.txt:system/etc/wl/nvram.txt \
   vendor/lge/aloha/proprietary/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \
   vendor/lge/aloha/proprietary/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
   vendor/lge/aloha/proprietary/wl/rtecdc-mfgtest.bin:system/etc/wl/rtecdc-mfgtest.bin \
   vendor/lge/aloha/proprietary/egl/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
   vendor/lge/aloha/proprietary/egl/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \
   vendor/lge/aloha/proprietary/egl/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \
   vendor/lge/aloha/proprietary/egl/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \
   vendor/lge/aloha/proprietary/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
   vendor/lge/aloha/proprietary/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
   frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    vendor/lge/aloha/proprietary/permissions/qcrilhook.xml:system/etc/permissions/qcrilhook.xml \
    vendor/lge/aloha/proprietary/permissions/lgsvcitems.xml:system/etc/permissions/lgsvcitems.xml \
   vendor/lge/aloha/proprietary/permissions/platform.xml:system/etc/permissions/platform.xml \
	vendor/lge/aloha/proprietary/permissions/com.cequint.platform.xml:system/etc/permissions/com.cequint.platform.xml \
	vendor/lge/aloha/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
   vendor/lge/aloha/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
   vendor/lge/aloha/proprietary/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
   vendor/lge/aloha/proprietary/permissions/qcrilhook.xml:system/etc/permissions/qcrilhook.xml \
      	vendor/lge/aloha/proprietary/lib/libauth.so:system/lib/libauth.so \
   	vendor/lge/aloha/proprietary/lib/libcm.so:system/lib/libcm.so \
	vendor/lge/aloha/proprietary/lib/libdiag.so:system/lib/libdiag.so \
	vendor/lge/aloha/proprietary/lib/libdll.so:system/lib/libdll.so \
	vendor/lge/aloha/proprietary/lib/libdsm.so:system/lib/libdsm.so \
	vendor/lge/aloha/proprietary/lib/libdss.so:system/lib/libdss.so \
	vendor/lge/aloha/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
	vendor/lge/aloha/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
	vendor/lge/aloha/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
	vendor/lge/aloha/proprietary/lib/libnv.so:system/lib/libnv.so \
	vendor/lge/aloha/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so\
	vendor/lge/aloha/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so\
	vendor/lge/aloha/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \
	vendor/lge/aloha/proprietary/lib/libqmi.so:system/lib/libqmi.so \
	vendor/lge/aloha/proprietary/lib/libqueue.so:system/lib/libqueue.so \
	vendor/lge/aloha/proprietary/lib/libsnd.so:system/lib/libsnd.so \
	vendor/lge/aloha/proprietary/lib/libwms.so:system/lib/libwms.so \
	vendor/lge/aloha/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \
   	vendor/lge/aloha/proprietary/system/bin/akmd2:system/bin/akmd2 \
	vendor/lge/aloha/proprietary/system/bin/qmuxd:system/bin/qmuxd \
	vendor/lge/aloha/proprietary/system/bin/wl:system/bin/wl \
   	vendor/lge/aloha/proprietary/hw/sensors.aloha.so:system/lib/hw/sensors.aloha.so \
   	vendor/lge/aloha/aloha.kcm.bin:system/usr/keychars/aloha.kcm.bin \
   	vendor/lge/aloha/aloha.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
	vendor/lge/aloha/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
	vendor/lge/aloha/aloha.kl:system/usr/keylayout/aloha.kl \
	vendor/lge/aloha/aloha.kl:system/usr/keylayout/qwerty.kl \
	vendor/lge/aloha/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
	vendor/lge/aloha/proprietary/lib/libgsl.so:system/lib/libgsl.so \
	vendor/lge/aloha/proprietary/system/bin/tsdown:system/bin/tsdown \
	vendor/lge/aloha/proprietary/system/bin/port-bridge:system/bin/port-bridge \
	vendor/lge/aloha/proprietary/system/bin/wpa_supplicant:system/bin/wpa_supplicant \
	vendor/lge/aloha/proprietary/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
	vendor/lge/aloha/proprietary/dhcpcd/dhcpcd-run-hooks:system/etc/dhcpcd/dhcpcd-run-hooks \
	vendor/lge/aloha/proprietary/dhcpcd/01-test:system/etc/dhcpcd/dhcpcd-hooks/01-test \
	vendor/lge/aloha/proprietary/dhcpcd/20-dns.conf:system/etc/dhcpcd/dhcpcd-hooks/20-dns.conf \
	vendor/lge/aloha/proprietary/dhcpcd/95-configured:system/etc/dhcpcd/dhcpcd-hooks/95-configured \
	vendor/lge/aloha/proprietary/lib/libgps.so:system/lib/libgps.so \
	vendor/lge/aloha/proprietary/lib/libloc.so:obj/lib/libloc.so \
	vendor/lge/aloha/proprietary/lib/libloc.so:system/lib/libloc.so \
	vendor/lge/aloha/proprietary/lib/libcommondefs.so:obj/lib/libcommondefs.so \
	vendor/lge/aloha/proprietary/lib/libcommondefs.so:system/lib/libcommondefs.so \
	vendor/lge/aloha/proprietary/lib/libloc-rpc.so:obj/lib/libloc-rpc.so \
	vendor/lge/aloha/proprietary/lib/libloc-rpc.so:system/lib/libloc-rpc.so \
	vendor/lge/aloha/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
	vendor/lge/aloha/proprietary/lib/libomx_wmadec_sharedlibrary.so:system/lib/libomx_wmadec_sharedlibrary.so \
	vendor/lge/aloha/proprietary/lib/libomx_wmvdec_sharedlibrary.so:system/lib/libomx_wmvdec_sharedlibrary.so 


$(call inherit-product, build/target/product/generic.mk)

PRODUCT_BRAND := lg
PRODUCT_NAME := aloha_generic
PRODUCT_DEVICE := aloha
PRODUCT_MODEL := Lge Ally

