# This is a FSL Android Reference Design platform based on i.MX51 BBG board
# It will inherit from FSL core product which in turn inherit from Google generic
PRODUCT_PROPERTY_OVERRIDES := \
    ro.config.notification_sound=Adara.ogg \
    ro.config.alarm_alert=Cesium.ogg	\
	ro.carrier=wifi-only

$(call inherit-product, device/infotm/imapx800/device_base.mk)
$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)

#system property sets
PRODUCT_PROPERTY_OVERRIDES += \
    ro.phone.enabled=false \
    wifi.interface=wlan0 \
    persist.sys.usb.config=mass_storage

#time info
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.timezone=Asia/Shanghai \
	persist.sys.language=zh \
	persist.sys.country=CN 


DEVICE_PACKAGE_OVERLAYS := \
    device/infotm/a5mid/overlay

PRODUCT_DEFAULT_DEV_CERTIFICATE := device/infotm/imapx800/security/release

# Overrides
PRODUCT_NAME := a5mid
PRODUCT_BRAND := Infotmic
DEVICE_BOARD := a5mid
PRODUCT_DEVICE := a5mid
PRODUCT_MANUFACTURER := Infotmic


#add hardware-specific features here. copy hardware related feature xml below to "system/etc/permissions/"  
#other feature xml files locate in frameworks/native/data/etc/
PRODUCT_COPY_FILES += \
		      frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
		      frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml	\
			  frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml	\
			  frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml	\
			  frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml	\
			  frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml	\
			  frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml	\
			  frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml	\
			  device/infotm/imapx800/etc/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml	\
			  device/infotm/a5mid/mg8696s.idc:system/usr/idc/mg8696s.idc 
		          #frameworks/base/data/sounds/notifications/Procyon.ogg:system/media/audio/poweron.ogg \
		          #frameworks/base/data/sounds/notifications/Procyon.ogg:system/media/audio/poweroff.ogg

PRODUCT_COPY_FILES += $(call add-to-product-copy-files-if-exists,\
packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml)

