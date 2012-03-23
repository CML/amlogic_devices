#
# system.prop for aml8726m
#
PRODUCT_PROPERTY_OVERRIDES += \
    hwui.render_dirty_regions=false \
    ro.data.on=0 \
    ro.config.play.bootsound=0 \
    dalvik.vm.dexopt-data-only=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.checkjni=false \
    persist.sys.use_16bpp_alpha=1 \
    persist.sys.use_dithering=0 \
    persist.sys.scrollingcache=3 \
    qemu.sf.lcd_density=160 \
    debug.sf.hw=1 \
    ro.opengles.version=131072 \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=true \
    media.stagefright.enable-scan=true \
    media.stagefright.enable-http=true \
    wifi.interface=eth0 \
    ro.phone_storage = 1 \
    wifi.supplicant_scan_interval=30 \
    hw.nophone=true \
    ro.vold.switchablepair=/mnt/sdcard,/mnt/nand \
    dalvik.vm.dexopt-flags=m=y \
    persist.sys.usb.config=mass_storage

# HDMI 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hdmi480p.enable=false \
    rw.fb.need2xscale=ok

# Use OSD2 mouse patch
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ui.cursor=osd2

#camera DCIM dir. 0:sd only; 1:nand only; 2,sd first
PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.dcim=2 \
    hw.cameras=1

#nand write need force sync when gadget
PRODUCT_PROPERTY_OVERRIDES += \
    gadget.nand.force_sync=true

#Ril
PRODUCT_PROPERTY_OVERRIDES += \
    hw.nophone=true
