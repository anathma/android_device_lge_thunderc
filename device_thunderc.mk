$(call inherit-product, build/target/product/full.mk)
#$(call inherit-product, build/target/product/languages_small.mk)
$(call inherit-product, vendor/cm/config/common.mk)
$(call inherit-product-if-exists, vendor/lge/thunderc/thunderc-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/thunderc/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/thunderc/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Keylayouts
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/thunder_keypad.kl:system/usr/keylayout/thunder_keypad.kl \
    vendor/lge/thunderc/proprietary/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    vendor/lge/thunderc/proprietary/thunder_keypad.kcm.bin:system/usr/keychars/thunder_keypad.kcm.bin \
    vendor/lge/thunderc/proprietary/Generic.kl:system/usr/keylayout/Generic.kl \

PRODUCT_COPY_FILES += \
    device/lge/thunderc/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/lge/thunderc/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    vendor/lge/thunderc/proprietary/etc/init.local.rc:system/etc/init.local.rc \
    device/lge/thunderc/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/thunderc/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
#    device/lge/thunderc/prebuilt/etc/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \   
#    vendor/lge/thunderc/proprietary/etc/init.thunderc.usb.rc:system/etc/init.thunderc.usb.rc \	
#       device/lge/thunderc/prebuilt/etc/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
# Drew's init stuff
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/etc/init.d/05mountext:system/etc/init.d/05mountext \
    vendor/lge/thunderc/proprietary/etc/init.d/08dalvik:system/etc/init.d/08dalvik \
    vendor/lge/thunderc/proprietary/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd \
    vendor/lge/thunderc/proprietary/etc/init.d/87calibration:system/etc/init.d/87calibration \
    vendor/lge/thunderc/proprietary/etc/init.d/95zipalign:system/etc/init.d/95zipalign \
    vendor/lge/thunderc/proprietary/etc/init.d/96tweak:system/etc/init.d/96tweak \
    vendor/lge/thunderc/proprietary/etc/init.local.rc:system/etc/init.local.rc \
    vendor/lge/thunderc/proprietary/etc/spn-conf.xml:system/etc/spn-conf.xml \
    vendor/lge/thunderc/proprietary/etc/profile:system/etc/profile \
    vendor/lge/thunderc/proprietary/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/lge/thunderc/proprietary/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \

#WIFI
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/bin/dhcpcd:system/bin/dhcpcd \
    

# BT startup
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh

 # Board-specific init

# Board-specific init
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/init.thunderc.rc:root/init.thunderc.rc \
    vendor/lge/thunderc/proprietary/initlogo.rle:root/initlogo.rle \
    vendor/lge/thunderc/proprietary/ueventd.thunderc.rc:root/ueventd.thunderc.rc \
    

# OFFLINE CHARGING
PRODUCT_COPY_FILES += \
    device/lge/thunderc/bootlogo/bootlogo:root/sbin/bootlogo \
    device/lge/thunderc/bootlogo/bootimages/opening_01.rle:root/bootimages/opening_01.rle \
    device/lge/thunderc/bootlogo/bootimages/opening_02.rle:root/bootimages/opening_02.rle \
    device/lge/thunderc/bootlogo/bootimages/opening_03.rle:root/bootimages/opening_03.rle \
    device/lge/thunderc/bootlogo/bootimages/opening_04.rle:root/bootimages/opening_04.rle \
    device/lge/thunderc/bootlogo/bootimages/opening_05.rle:root/bootimages/opening_05.rle \
    device/lge/thunderc/bootlogo/bootimages/opening_06.rle:root/bootimages/opening_06.rle \
    device/lge/thunderc/bootlogo/bootimages/opening_07.rle:root/bootimages/opening_07.rle \
    device/lge/thunderc/bootlogo/bootimages/opening_08.rle:root/bootimages/opening_08.rle \
    device/lge/thunderc/chargemode/chargerlogo:root/sbin/chargerlogo \
    device/lge/thunderc/chargemode/chargerimages/black_bg.rle:root/chargerimages/black_bg.rle \
    device/lge/thunderc/chargemode/chargerimages/battery_bg.rle:root/chargerimages/battery_bg.rle \
    device/lge/thunderc/chargemode/chargerimages/battery_ani_01.rle:root/chargerimages/battery_ani_01.rle \
    device/lge/thunderc/chargemode/chargerimages/battery_ani_02.rle:root/chargerimages/battery_ani_02.rle \
    device/lge/thunderc/chargemode/chargerimages/battery_ani_03.rle:root/chargerimages/battery_ani_03.rle \
    device/lge/thunderc/chargemode/chargerimages/battery_ani_04.rle:root/chargerimages/battery_ani_04.rle \
    device/lge/thunderc/chargemode/chargerimages/battery_ani_05.rle:root/chargerimages/battery_ani_05.rle \
    device/lge/thunderc/chargemode/chargerimages/battery_charging_01.rle:root/chargerimages/battery_charging_01.rle \
    device/lge/thunderc/chargemode/chargerimages/battery_charging_02.rle:root/chargerimages/battery_charging_02.rle \
    device/lge/thunderc/chargemode/chargerimages/battery_charging_03.rle:root/chargerimages/battery_charging_03.rle \
    device/lge/thunderc/chargemode/chargerimages/battery_charging_04.rle:root/chargerimages/battery_charging_04.rle \
    device/lge/thunderc/chargemode/chargerimages/battery_charging_05.rle:root/chargerimages/battery_charging_05.rle \
    device/lge/thunderc/chargemode/chargerimages/battery_charging_06.rle:root/chargerimages/battery_charging_06.rle \
    device/lge/thunderc/chargemode/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_01.rle \
    device/lge/thunderc/chargemode/chargerimages/battery_wait_ani_02.rle:root/chargerimages/battery_wait_ani_02.rle \

# Backlight
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/bin/tsdown:system/bin/tsdown \
    vendor/lge/thunderc/proprietary/etc/MELFAS_FIRM.bin:system/etc/MELFAS_FIRM.bin

# Sensors
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/bin/ami304d:system/bin/ami304d \
#    vendor/lge/thunderc/proprietary/lib/hw/sensors.thunderc.so:system/lib/hw/sensors.thunderc.so \
    

# 2D (using proprietary because of poor perfomance of open source libs)
#PRODUCT_COPY_FILES += \
#    vendor/lge/thunderc/proprietary/lib/hw/gralloc.default.so:system/lib/hw/gralloc.default.so \
#    vendor/lge/thunderc/proprietary/lib/hw/gralloc.thunderc.so:system/lib/hw/gralloc.thunderc.so \

# 3D
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/lge/thunderc/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/lge/thunderc/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/lge/thunderc/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    vendor/lge/thunderc/proprietary/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
    vendor/lge/thunderc/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    vendor/lge/thunderc/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/lge/thunderc/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    vendor/lge/thunderc/proprietary/lib/hw/hal_seport.default.so:system/lib/hw/hal_seport.default.so  \
    vendor/lge/thunderc/proprietary/lib/hw/gralloc.thunderc.so:system/lib/hw/gralloc.thunderc.so \
    vendor/lge/thunderc/proprietary/lib/hw/hwcomposer.thunderc.so:system/lib/hw/hwcomposer.thunderc.so  \
    vendor/lge/thunderc/proprietary/lib/libmemalloc.so:obj/lib/libmemalloc.so  \
    vendor/lge/thunderc/proprietary/lib/libmemalloc.so:system/lib/libmemalloc.so \
#	vendor/lge/thunderc/proprietary/lib/hw/copybit.thunderc.so:system/lib/hw/copybit.thunderc.so \
#    device/lge/thunderc/prebuilt/lib/libsurfaceflinger.so:system/lib/libsurfaceflinger.so \
#   
# Camera
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/lge/thunderc/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/lge/thunderc/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \

# Wifi
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/lib/modules/wireless.ko:system/lib/modules/wireless.ko \
    vendor/lge/thunderc/proprietary/lib/modules/librasdioif.ko:system/lib/modules/librasdioif.ko \
    vendor/lge/thunderc/proprietary/lib/modules/tun.ko:system/lib/modules/tun.ko \
    vendor/lge/thunderc/proprietary/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    vendor/lge/thunderc/proprietary/etc/wl/nvram.txt:system/etc/wl/nvram.txt \
    vendor/lge/thunderc/proprietary/etc/dhcpd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    vendor/lge/thunderc/proprietary/etc/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \
    vendor/lge/thunderc/proprietary/etc/wl/rtecdc-apsta.bin:system/etc/wl/rtecdc-apsta.bin \
    vendor/lge/thunderc/proprietary/etc/wl/rtecdc-mfgtest.bin:system/etc/wl/rtecdc-mfgtest.bin \
    vendor/lge/thunderc/proprietary/etc/firmware/wlan/cfg.dat:system/etc/firmware/wlan/cfg.dat \
    vendor/lge/thunderc/proprietary/etc/firmware/wlan/qcom_cfg.ini:system/etc/firmware/wlan/qcom_cfg.ini \
    vendor/lge/thunderc/proprietary/etc/firmware/wlan/qcom_fw.bin:system/etc/firmware/wlan/qcom_fw.bin \
    vendor/lge/thunderc/proprietary/bin/wl:system/bin/wl
    

# SD Card
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/etc/vold.fstab:system/etc/vold.fstab

# Audio
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/lib/hw/audio.a2dp.default.so:system/lib/hw/audio.a2dp.default.so \
    vendor/lge/thunderc/proprietary/lib/hw/audio.primary.thunderc.so:system/lib/hw/audio.primary.thunderc.so \
    vendor/lge/thunderc/proprietary/lib/bluez-plugin/audio.so:system/lib/bluez-plugin/audio.so \
    vendor/lge/thunderc/proprietary/lib/hw/audio.primary.default.so:system/lib/hw/audio.primary.default.so \
    vendor/lge/thunderc/proprietary/lib/hw/audio_policy.thunderc.so:system/lib/hw/audio_policy.thunderc.so \
    vendor/lge/thunderc/proprietary/lib/hw/audio.primary.goldfish.so:system/lib/hw/audio.primary.goldfish.so \
    vendor/lge/thunderc/proprietary/lib/hw/audio_policy.default.so:system/lib/hw/audio_policy.default.so \
    vendor/lge/thunderc/proprietary/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    vendor/lge/thunderc/proprietary/lib/liba2dp.so:system/lib/liba2dp.so \
    vendor/lge/thunderc/proprietary/lib/liba2dp.so:obj/lib/liba2dp.so \
    vendor/lge/thunderc/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \
    vendor/lge/thunderc/proprietary/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

# Device permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# LGE services
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/bin/port-bridge:system/bin/port-bridge \
    vendor/lge/thunderc/proprietary/bin/qmuxd:system/bin/qmuxd \
    vendor/lge/thunderc/proprietary/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    vendor/lge/thunderc/proprietary/bin/rmt_storage:system/bin/rmt_storage \
    vendor/lge/thunderc/proprietary/bin/netmgrd:system/bin/netmgrd \
    vendor/lge/thunderc/proprietary/bin/wiperiface:system/bin/wiperiface \

# Unknown (needed or not?)
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/bin/cnd:system/bin/cnd

PRODUCT_PROPERTY_OVERRIDES += \
    ro.lge.vibrator_amp=125 \
    ro.sf.lcd_density=160 \
    persist.sys.use_16bpp_alpha

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

# OMX
#PRODUCT_COPY_FILES += \
#    vendor/lge/thunderc/proprietary/lib/libmm-omxcore.so:system/lib/libmm-omxcore.so \
#    vendor/lge/thunderc/proprietary/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \
#    vendor/lge/thunderc/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
#    vendor/lge/thunderc/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
#    vendor/lge/thunderc/proprietary/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \
#    vendor/lge/thunderc/proprietary/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \
#    vendor/lge/thunderc/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
#    vendor/lge/thunderc/proprietary/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \
#    vendor/lge/thunderc/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
#    vendor/lge/thunderc/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
#    vendor/lge/thunderc/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
#    vendor/lge/thunderc/proprietary/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \
#    vendor/lge/thunderc/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
#    vendor/lge/thunderc/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
#    vendor/lge/thunderc/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
#    vendor/lge/thunderc/proprietary/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \
#    vendor/lge/thunderc/proprietary/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \
#    vendor/lge/thunderc/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
#    vendor/lge/thunderc/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
#    vendor/lge/thunderc/proprietary/lib/libomx_nextreaming_divxdec_sharedlibrary.so:system/lib/libomx_nextreaming_divxdec_sharedlibrary.so \
#    vendor/lge/thunderc/proprietary/lib/libomx_nextreaming_wmadec_sharedlibrary.so:system/lib/libomx_nextreaming_wmadec_sharedlibrary.so \
#    vendor/lge/thunderc/proprietary/lib/libomx_nextreaming_wmvdec_sharedlibrary.so:system/lib/libomx_nextreaming_wmvdec_sharedlibrary.so \
#    vendor/lge/thunderc/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
#    vendor/lge/thunderc/proprietary/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
#    vendor/lge/thunderc/proprietary/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so \
#    vendor/lge/thunderc/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
#    vendor/lge/thunderc/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
#    vendor/lge/thunderc/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \
#    vendor/lge/thunderc/proprietary/lib/libqcomm_omx.so:system/lib/libqcomm_omx.so \
#    vendor/lge/thunderc/proprietary/lib/libstagefright_omx.so:system/lib/libstagefright_omx.so \
#    vendor/lge/thunderc/proprietary/lib/libopencore_common.so:system/lib/libopencore_common.so \

PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/lib/libmm-omxcore.so:system/lib/libmm-omxcore.so \
    vendor/lge/thunderc/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/lge/thunderc/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    vendor/lge/thunderc/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    vendor/lge/thunderc/proprietary/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \
    vendor/lge/thunderc/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    vendor/lge/thunderc/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    vendor/lge/thunderc/proprietary/lib/libOmxCore.so:system/lib/libOmxCore.so \
    vendor/lge/thunderc/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    vendor/lge/thunderc/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    vendor/lge/thunderc/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    vendor/lge/thunderc/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    vendor/lge/thunderc/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/lge/thunderc/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    vendor/lge/thunderc/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/lge/thunderc/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    vendor/lge/thunderc/proprietary/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
    vendor/lge/thunderc/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/lge/thunderc/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    vendor/lge/thunderc/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \

# Bluetooth
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/bin/BCM4325D1_004.002.004.0218.0248.hcd:system/etc/firmware/BCM4325D1_004.002.004.0218.0248.hcd
    
# FONTS
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/fonts/Noxchia.ttf:system/fonts/Noxchia.ttf

# IDC file
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/touch_mcs6000.idc:system/usr/idc/touch_mcs6000.idc\
    vendor/lge/thunderc/proprietary/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# This is a prebuilt from lupohirp.  It's much smaller than the default.  Why?
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/packages/app/ApexLauncher.apk:system/app/ApexLauncher.apk \
	vendor/lge/thunderc/packages/app/FileManager2.apk:system/app/FileManager2.apk \
#   vendor/lge/thunderc/packages/app/usbstorage.apk:system/app/usbstorage.apk \
#    vendor/lge/thunderc/packages/app/Camera.apk:system/app/Camera.apk \
#PRODUCT_PROPERTY_OVERRIDES += debug.composition.type=mdp
#PRODUCT_PROPERTY_OVERRIDES += debug.gr.numframebuffers=2

       # HardwareRenderer properties
# dirty_regions: "false" to disable partial invalidates, override if enabletr=true
PRODUCT_PROPERTY_OVERRIDES += \
    hwui.render_dirty_regions=false \
    hwui.disable_vsync=true \
    hwui.print_config=choice \
	debug.composition.type=gpu \
	debug.sf.hw=1 \
#    debug.enabletr=false

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1
	persist.sys.strictmode.visual=0 \
	
PRODUCT_PACKAGES += \
    libopencorehw \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore \
    libgenlock \
    libqcomui \
    liboverlay \
    libtilerenderer 


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := thunderc
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := thunderc
PRODUCT_MODEL := LG-LS670
PRODUCT_MANUFACTURER := LGE

CDMA_GOOGLE_BASE := android-sprint-us
CDMA_CARRIER_ALPHA := Sprint
CDMA_CARRIER_NUMERIC := 310120

PRODUCT_LOCALES += mdpi


PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(CDMA_GOOGLE_BASE) \
    ro.cdma.home.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    ro.cdma.home.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.sim.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    gsm.sim.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    gsm.operator.numeric=$(CDMA_CARRIER_NUMERIC)
