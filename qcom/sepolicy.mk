#
# This policy configuration will be used by all qcom products
# that inherit from Lineage
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

ifneq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_SEPOLICY_DIRS += \
    device/custom/sepolicy/qcom/vendor
endif

ifeq ($(TARGET_INCLUDE_WIFI_EXT),true)
    ifeq (,$(filter sm6150 msmnile trinket, $(TARGET_BOARD_PLATFORM)))
        BOARD_SEPOLICY_DIRS += \
            device/custom/sepolicy/qcom/legacy/vendor
    endif
    ifneq (,$(filter sdm845 sdm710, $(TARGET_BOARD_PLATFORM)))
        BOARD_SEPOLICY_DIRS += \
            device/custom/sepolicy/qcom/legacy/sdm845-platform
    endif
endif
