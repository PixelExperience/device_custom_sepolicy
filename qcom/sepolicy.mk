#
# This policy configuration will be used by all qcom products
# that inherit from Pixel Experience
#

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/custom/sepolicy/qcom/private

BOARD_SEPOLICY_DIRS += \
    device/custom/sepolicy/qcom/common \
    device/custom/sepolicy/qcom/$(TARGET_BOARD_PLATFORM)
