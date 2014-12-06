# Inherit common CM stuff
$(call inherit-product, vendor/ridon/config/common.mk)

# Include CM audio files
include vendor/ridon/config/cm_audio.mk

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/ridon/prebuilt/common/bootanimation/800.zip:system/media/bootanimation.zip
endif
