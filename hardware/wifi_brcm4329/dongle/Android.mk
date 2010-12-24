LOCAL_PATH:= $(call my-dir)

#
# rtecdc.bin
#
include $(CLEAR_VARS)
LOCAL_MODULE := rtecdc.bin
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/wl
#LOCAL_SRC_FILES := rte/wl/builds/4329b1-4_218_116_18/sdio-g-cdc-full11n-reclaim-roml-wme.bin
#LOCAL_SRC_FILES := rte/wl/builds/4329b1-4_218_116_30/sdio-g-cdc-reclaim-roml-full11n-wme-aoe-pktfilter.bin
#LOCAL_SRC_FILES := rte/wl/builds/4329b1-4_218_116_40/sdio-g-cdc-reclaim-roml-full11n-wme-aoe-pktfilter.bin
#LOCAL_SRC_FILES := rte/wl/builds/4329b1-4_218_116_42/sdio-g-cdc-reclaim-roml-full11n-wme-aoe-pktfilter/rtecdc.bin
LOCAL_SRC_FILES := rte/wl/builds/4329b1-4_218_116_301/sdio-g-cdc-reclaim-roml-full11n-wme-aoe-pktfilter/rtecdc.bin
# LOCAL_SRC_FILES := rte/wl/builds/4329b1/sdio-g-cdc-full11n-reclaim-roml-wme.bin
include $(BUILD_PREBUILT)

#
# rtecdc-mfgtest.bin
#
include $(CLEAR_VARS)
LOCAL_MODULE := rtecdc-mfgtest.bin
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/wl
LOCAL_SRC_FILES := rte/wl/builds/4329b1-4_218_116_301/sdio-roml-cdc-g-11n-mfgtest-seqcmds/rtecdc_mfg.bin
#LOCAL_SRC_FILES := rte/wl/builds/4329b1-4_218_116_42/sdio-g-cdc-roml-11n-mfgtest-seqcmds/rtecdc.bin
#LOCAL_SRC_FILES := rte/wl/builds/4329b1-4_218_116_40/sdio-g-cdc-roml-11n-mfgtest-seqcmds.bin
#LOCAL_SRC_FILES := rte/wl/builds/4329b1-4_218_116_22/sdio-roml-cdc-g-11n-mfgtest-seqcmds.bin
#LOCAL_SRC_FILES := rte/wl/builds/4329b1-4_218_116_18/sdio-roml-cdc-g-11n-mfgtest-seqcmds.bin
# LOCAL_SRC_FILES := rte/wl/builds/4329b1/sdio-roml-cdc-g-11n-mfgtest-seqcmds.bin
include $(BUILD_PREBUILT)
