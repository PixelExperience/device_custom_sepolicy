#
# This policy configuration will be used by all exynos products
# that inherit from PixelExperience
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/custom/sepolicy/exynos/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/custom/sepolicy/exynos/dynamic \
    device/custom/sepolicy/exynos/system
else
BOARD_SEPOLICY_DIRS += \
    device/custom/sepolicy/exynos/dynamic \
    device/custom/sepolicy/exynos/vendor
endif
