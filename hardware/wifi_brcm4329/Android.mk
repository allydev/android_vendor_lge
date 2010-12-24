ifneq (, $(filter aloha alohag gisele, $(TARGET_PRODUCT)))
ifeq ($(TARGET_ARCH),arm)
include $(call all-subdir-makefiles)
endif
endif
