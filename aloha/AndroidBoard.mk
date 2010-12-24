LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_KERNEL_CONFIG),)
ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
endif # TARGET_PREBUILT_KERNEL
endif # TARGET_KERNEL_CONFIG

file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)

#file := $(TARGET_OUT)/lib/libhtc_ril.so
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/proprietary/libhtc_ril.so | $(ACP)
#	$(transform-prebuilt-to-target)

#file := $(TARGET_OUT)/lib/libhtc_acoustic.so
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/proprietary/libhtc_acoustic.so | $(ACP)
#	$(transform-prebuilt-to-target)

#file := $(TARGET_OUT)/lib/libaudioeq.so
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/proprietary/libaudioeq.so | $(ACP)
#	$(transform-prebuilt-to-target)

#file := $(TARGET_OUT_KEYLAYOUT)/h2w_headset.kl
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/h2w_headset.kl | $(ACP)
#	$(transform-prebuilt-to-target)
    
#file := $(TARGET_RECOVERY_ROOT_OUT)/etc/fstab
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/fstab | $(ACP)
#	$(transform-prebuilt-to-target)
    
#file := $(TARGET_OUT)/etc/fstab
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/fstab | $(ACP)
#	$(transform-prebuilt-to-target)

#file := $(TARGET_OUT_KEYLAYOUT)/trout-keypad.kl
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/trout-keypad.kl | $(ACP)
#	$(transform-prebuilt-to-target)

#file := $(TARGET_OUT_KEYLAYOUT)/trout-keypad-v2.kl
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/trout-keypad-v2.kl | $(ACP)
#	$(transform-prebuilt-to-target)

#file := $(TARGET_OUT_KEYLAYOUT)/trout-keypad-v3.kl
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/trout-keypad-v3.kl | $(ACP)
#	$(transform-prebuilt-to-target)

#file := $(TARGET_OUT_KEYLAYOUT)/trout-keypad-qwertz.kl
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/trout-keypad-qwertz.kl | $(ACP)
#	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/init.aloha.rc
$(file) : $(LOCAL_PATH)/init.aloha.rc | $(ACP)
	$(transform-prebuilt-to-target)
ALL_PREBUILT += $(file)

file := $(TARGET_ROOT_OUT)/init.rc
$(file) : $(LOCAL_PATH)/init.rc | $(ACP)
	$(transform-prebuilt-to-target)
ALL_PREBUILT += $(file)

file := $(TARGET_ROOT_OUT_SBIN)/bootlogo
$(file) : $(LOCAL_PATH)/bootlogo | $(ACP)
	$(transform-prebuilt-to-target)
ALL_PREBUILT += $(file)

file := $(TARGET_ROOT_OUT)/initlogo.rle
$(file) : $(LOCAL_PATH)/initlogo.rle | $(ACP)
	$(transform-prebuilt-to-target)
ALL_PREBUILT += $(file)

file := $(TARGET_ROOT_OUT)/init.qcom.post_boot.sh
$(file) : $(LOCAL_PATH)/init.qcom.post_boot.sh | $(ACP)
	$(transform-prebuilt-to-target)
ALL_PREBUILT += $(file)

#include $(CLEAR_VARS)
#LOCAL_SRC_FILES := trout-keypad.kcm
#include $(BUILD_KEY_CHAR_MAP)

#include $(CLEAR_VARS)
#LOCAL_SRC_FILES := trout-keypad-v2.kcm
#include $(BUILD_KEY_CHAR_MAP)

#include $(CLEAR_VARS)
#LOCAL_SRC_FILES := trout-keypad-v3.kcm
#include $(BUILD_KEY_CHAR_MAP)

#include $(CLEAR_VARS)
#LOCAL_SRC_FILES := trout-keypad-qwertz.kcm
#include $(BUILD_KEY_CHAR_MAP)

#file := $(TARGET_OUT)/build.trout.prop
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/build.trout.prop | $(ACP)
#	$(transform-prebuilt-to-target)

#file := $(TARGET_OUT_KEYLAYOUT)/sapphire-keypad.kl
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/sapphire-keypad.kl | $(ACP)
#	$(transform-prebuilt-to-target)

#file := $(TARGET_ROOT_OUT)/init.sapphire.rc
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/init.sapphire.rc | $(ACP)
#	$(transform-prebuilt-to-target)

#include $(CLEAR_VARS)
#LOCAL_SRC_FILES := sapphire-keypad.kcm
#include $(BUILD_KEY_CHAR_MAP)

#file := $(TARGET_OUT)/build.sapphire.prop
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/build.sapphire.prop | $(ACP)
#	$(transform-prebuilt-to-target)

#file := $(TARGET_OUT)/etc/firmware/brf6300.bin
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/proprietary/brf6300.bin | $(ACP)
#	$(transform-prebuilt-to-target)


# This will install the file in /system/etc
#
#include $(CLEAR_VARS)
#LOCAL_MODULE_CLASS := ETC
#LOCAL_MODULE := AudioFilter.csv
#LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
#include $(BUILD_PREBUILT)

#include $(CLEAR_VARS)
#LOCAL_MODULE_CLASS := ETC
#LOCAL_MODULE := AudioPreProcess.csv
#LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
#include $(BUILD_PREBUILT)

# Installer will setup a symlink based on board type if set
#
#ifeq ($(WITH_HTCACOUSTIC_HACK),)
#include $(CLEAR_VARS)
#LOCAL_MODULE_CLASS := ETC
#LOCAL_MODULE := AudioPara4.csv
#LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
#include $(BUILD_PREBUILT)
#else
#include $(CLEAR_VARS)
#LOCAL_MODULE_CLASS := ETC
#LOCAL_MODULE := AudioPara_sapphire.csv
#LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
#include $(BUILD_PREBUILT)

#include $(CLEAR_VARS)
#LOCAL_MODULE_CLASS := ETC
#LOCAL_MODULE := AudioPara_dream.csv
#LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
#include $(BUILD_PREBUILT)
#endif # WITH_HTCACOUSTIC_HACK

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE := vold.conf
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE := gps.conf
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

# WiFi driver and firmware
#local_target_dir := $(TARGET_OUT_ETC)/firmware

#include $(CLEAR_VARS)
#LOCAL_MODULE := Fw1251r1c.bin
#LOCAL_MODULE_TAGS := user
#LOCAL_MODULE_CLASS := ETC
#LOCAL_MODULE_PATH := $(local_target_dir)
#LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
#include $(BUILD_PREBUILT)




#$(LOCAL_PATH)/proprietary/libGLES_qcom.so:system/lib/egl/libGLES_qcom.so
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/proprietary/akmd2:system/bin/akmd2 \
#    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
#    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
#    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml 
#    $(LOCAL_PATH)/proprietary/libspeech.so:system/lib/libspeech.so 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bootimages/VZW_open_480x800_00000.rle:root/bootimages/VZW_open_480x800_00000.rle \
    $(LOCAL_PATH)/bootimages/VZW_open_480x800_00001.rle:root/bootimages/VZW_open_480x800_00001.rle \
    $(LOCAL_PATH)/bootimages/VZW_open_480x800_00002.rle:root/bootimages/VZW_open_480x800_00002.rle \
    $(LOCAL_PATH)/bootimages/VZW_open_480x800_00003.rle:root/bootimages/VZW_open_480x800_00003.rle \
	$(LOCAL_PATH)/bootimages/VZW_open_480x800_00004.rle:root/bootimages/VZW_open_480x800_00004.rle \
	$(LOCAL_PATH)/bootimages/VZW_open_480x800_00005.rle:root/bootimages/VZW_open_480x800_00005.rle \
	$(LOCAL_PATH)/bootimages/VZW_open_480x800_00006.rle:root/bootimages/VZW_open_480x800_00006.rle \
	$(LOCAL_PATH)/bootimages/VZW_open_480x800_00007.rle:root/bootimages/VZW_open_480x800_00007.rle \
	$(LOCAL_PATH)/bootimages/VZW_open_480x800_00008.rle:root/bootimages/VZW_open_480x800_00008.rle \
	$(LOCAL_PATH)/bootimages/VZW_open_480x800_00009.rle:root/bootimages/VZW_open_480x800_00009.rle \
	$(LOCAL_PATH)/bootimages/VZW_open_480x800_00010.rle:root/bootimages/VZW_open_480x800_00010.rle \
	$(LOCAL_PATH)/bootimages/VZW_open_480x800_00011.rle:root/bootimages/VZW_open_480x800_00011.rle \
	$(LOCAL_PATH)/bootimages/VZW_open_480x800_00012.rle:root/bootimages/VZW_open_480x800_00012.rle \
	$(LOCAL_PATH)/bootimages/VZW_open_480x800_00013.rle:root/bootimages/VZW_open_480x800_00013.rle \
	$(LOCAL_PATH)/bootimages/VZW_open_480x800_00014.rle:root/bootimages/VZW_open_480x800_00014.rle \
	$(LOCAL_PATH)/bootimages/VZW_open_480x800_00015.rle:root/bootimages/VZW_open_480x800_00015.rle \
	$(LOCAL_PATH)/bootimages/VZW_open_480x800_00016.rle:root/bootimages/VZW_open_480x800_00016.rle \
	$(LOCAL_PATH)/bootimages/VZW_open_480x800_00017.rle:root/bootimages/VZW_open_480x800_00017.rle \
	$(LOCAL_PATH)/bootimages/VZW_open_480x800_00018.rle:root/bootimages/VZW_open_480x800_00018.rle \
	$(LOCAL_PATH)/bootimages/VZW_open_480x800_00019.rle:root/bootimages/VZW_open_480x800_00019.rle \
	$(LOCAL_PATH)/bootimages/VZW_open_480x800_00020.rle:root/bootimages/VZW_open_480x800_00020.rle \
	$(LOCAL_PATH)/bootimages/VZW_open_480x800_00021.rle:root/bootimages/VZW_open_480x800_00021.rle \
	$(LOCAL_PATH)/bootimages/VZW_open_480x800_00022.rle:root/bootimages/VZW_open_480x800_00022.rle \
	$(LOCAL_PATH)/init.rc:root/init.rc










   	
