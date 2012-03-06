$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/thunderc/thunderc-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/thunderc/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/thunderc/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Board-specific init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/initlogo.rle:root/initlogo.rle \
    $(LOCAL_PATH)/init.thunderc.rc:root/init.thunderc.rc \
    $(LOCAL_PATH)/ueventd.thunderc.rc:root/ueventd.thunder.rc

# BT startup
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh

# configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/7k_handset.kl:system/usr/keylayout/7k_handset.kl

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nvram.txt:system/etc/wl/nvram.txt \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/prebuilt/wireless.ko:system/lib/modules/wireless.ko \
    vendor/lge/thunderc/proprietary/bin/dhcpcd:system/bin/dhcpcd \


# chargermode
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_ani_01.rle:root/chargerimages/battery_ani_01.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_ani_02.rle:root/chargerimages/battery_ani_02.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_ani_03.rle:root/chargerimages/battery_ani_03.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_ani_04.rle:root/chargerimages/battery_ani_04.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_ani_05.rle:root/chargerimages/battery_ani_05.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_bg.rle:root/chargerimages/battery_bg.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_01.rle:root/chargerimages/battery_charging_01.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_02.rle:root/chargerimages/battery_charging_02.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_03.rle:root/chargerimages/battery_charging_03.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_04.rle:root/chargerimages/battery_charging_04.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_05.rle:root/chargerimages/battery_charging_05.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_06.rle:root/chargerimages/battery_charging_06.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_01.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_wait_ani_02.rle:root/chargerimages/battery_wait_ani_02.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/black_bg.rle:root/chargerimages/black_bg.rle \
    $(LOCAL_PATH)/chargemode/chargerlogo:root/sbin/chargerlogo

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

PRODUCT_PACKAGES += \
    gps.thunderc \
    lights.thunderc \
    audio_policy.thunderc \
    audio.primary.thunderc \
    hwaddrs \
    libOmxCore \
    lgapversion


#Temporary prebuilded libs until we find a solution for ARMv6 MSM7227 chipset

###################################################################################

#3D
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/lge/thunderc/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/lge/thunderc/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/lge/thunderc/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    vendor/lge/thunderc/proprietary/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
    vendor/lge/thunderc/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    vendor/lge/thunderc/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/lge/thunderc/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    vendor/lge/thunderc/proprietary/lib/hw/gralloc.thunderc.so:system/lib/hw/gralloc.thunderc.so  \
    vendor/lge/thunderc/proprietary/lib/hw/hwcomposer.thunderc.so:system/lib/hw/hwcomposer.thunderc.so \
    vendor/lge/thunderc/proprietary/lib/hw/copybit.thunderc.so:system/lib/hw/copybit.thunderc.so \
    vendor/lge/thunderc/proprietary/lib/libmemalloc.so:obj/lib/libmemalloc.so  \
    vendor/lge/thunderc/proprietary/lib/libmemalloc.so:system/lib/libmemalloc.so 

# Sensors
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/bin/ami304d:system/bin/ami304d \
    vendor/lge/thunderc/proprietary/lib/hw/sensors.thunderc.so:system/lib/hw/sensors.thunderc.so \

# Camera
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/lge/thunderc/proprietary/lib/liboemcamera.so:obj/lib/liboemcamera.so \
    vendor/lge/thunderc/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/lge/thunderc/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    vendor/lge/thunderc/proprietary/lib/libmmjpeg.so:obj/lib/libmmjpeg.so \
    vendor/lge/thunderc/proprietary/lib/libmikecamera.so:obj/lib/libmikecamera.so \
    vendor/lge/thunderc/proprietary/lib/libmikecamera.so:system/lib/libmikecamera.so\
    vendor/lge/thunderc/proprietary/lib/libcamera_client.so:obj/lib/libcamera_client.so\
    vendor/lge/thunderc/proprietary/lib/libcamera_client.so:system/lib/libcamera_client.so\
    vendor/lge/thunderc/proprietary/lib/libcameraservice.so:obj/lib/libcameraservice.so\
    vendor/lge/thunderc/proprietary/lib/libcameraservice.so:system/lib/libcameraservice.so\
    vendor/lge/thunderc/proprietary/lib/hw/camera.thunderc.so:obj/lib/hw/camera.thunderc.so\
    vendor/lge/thunderc/proprietary/lib/hw/camera.thunderc.so:system/lib/hw/camera.thunderc.so

# RIL
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/lib/libidl.so:system/lib/libidl.so \
    vendor/lge/thunderc/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/lge/thunderc/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/lge/thunderc/proprietary/lib/libdsm.so:system/lib/libdsm.so \
    vendor/lge/thunderc/proprietary/lib/libqueue.so:system/lib/libqueue.so \
    vendor/lge/thunderc/proprietary/lib/libdiag.so:system/lib/libdiag.so \
    vendor/lge/thunderc/proprietary/lib/libauth.so:system/lib/libauth.so \
    vendor/lge/thunderc/proprietary/lib/libcm.so:system/lib/libcm.so \
    vendor/lge/thunderc/proprietary/lib/libnv.so:system/lib/libnv.so \
    vendor/lge/thunderc/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/lge/thunderc/proprietary/lib/libwms.so:system/lib/libwms.so \
    vendor/lge/thunderc/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \
    vendor/lge/thunderc/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/lge/thunderc/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/lge/thunderc/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/lge/thunderc/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    vendor/lge/thunderc/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
    vendor/lge/thunderc/proprietary/lib/libsnd.so:system/lib/libsnd.so \
    vendor/lge/thunderc/proprietary/lib/libqmi.so:system/lib/libqmi.so \
    vendor/lge/thunderc/proprietary/lib/libdsutils.so:system/lib/libdsutils.so \
    vendor/lge/thunderc/proprietary/lib/libdll.so:system/lib/libdll.so \
    vendor/lge/thunderc/proprietary/lib/liblgeat.so:system/lib/liblgeat.so \
    vendor/lge/thunderc/proprietary/lib/liblgdrm.so:system/lib/liblgdrm.so \
    vendor/lge/thunderc/proprietary/lib/liblgdrmwbxml.so:system/lib/liblgdrmwbxml.so \
    vendor/lge/thunderc/proprietary/lib/liblgerft.so:system/lib/liblgerft.so \
    vendor/lge/thunderc/proprietary/lib/libbcmwl.so:system/lib/libbcmwl.so \
    vendor/lge/thunderc/proprietary/lib/libdss.so:system/lib/libdss.so \
    vendor/lge/thunderc/proprietary/lib/libril.so:system/lib/libril.so \
    vendor/lge/thunderc/proprietary/bin/rild:system/bin/rild \
    vendor/lge/thunderc/proprietary/bin/qmuxd:system/bin/qmuxd \

 # Bluetooth
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/bin/BCM4325D1_004.002.004.0218.0248.hcd:system/etc/firmware/BCM4325D1_004.002.004.0218.0248.hcd

# IDC file
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/usr/idc/touch_mcs6000.idc:system/usr/idc/touch_mcs6000.idc\

# Audio
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/lib/hw/audio.a2dp.default.so:system/lib/hw/audio.a2dp.default.so 

#SD-Card
PRODUCT_COPY_FILES += \
   vendor/lge/thunderc/proprietary/etc/vold.fstab:system/etc/vold.fstab \

####################################################################################

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := thunderc
PRODUCT_DEVICE := thunderc
PRODUCT_MODEL := LG Optimus One
