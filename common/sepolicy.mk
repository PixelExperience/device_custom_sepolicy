#
# This policy configuration will be used by all products that
# inherit from Pixel Experience
#

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/custom/sepolicy/common/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/custom/sepolicy/common/private

BOARD_SEPOLICY_DIRS += \
    device/custom/sepolicy/common/vendor
