#
# system.prop for aml8726m
#
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mass_storage \
    persist.service.adb.enable=1 \
    ro.vold.switchablepair=/mnt/nand,/mnt/sdcard \
    hwui.render_dirty_regions=false \
    ro.config.play.bootsound=0 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.checkjni=false \
    persist.sys.use_16bpp_alpha=1 \
    persist.sys.use_dithering=0 \
    qemu.sf.lcd_density=160 \
    debug.sf.hw=1 \
    ro.opengles.version=131072 \
    wifi.interface=eth0 \
    ro.phone_storage=1 \
    wifi.supplicant_scan_interval=30 \
    ro.app.optimization=true \
    input.hwrotation=270 \
    ro.sf.hwrotation=270 \
    persist.service.zram=1 \
    ro.zram.default=26

# amplayer for HW accelerated video
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=true \
    media.stagefright.enable-scan=true \
    media.stagefright.enable-http=true \
    media.amsuperplayer.enable=true \
    media.amplayer.enable-acodecs=asf,wav,aac,mp3,m4a,ape,flac,alac,ogg \
    media.amplayer.enable=true \
    media.amsuperplayer.m4aplayer=STAGEFRIGHT_PLAYER \
    media.amsuperplayer.defplayer=PV_PLAYER \
    media.amplayer.thumbnail=true

# HDMI 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hdmi480p.enable=false \
    rw.fb.need2xscale=ok

#camera DCIM dir. 0:sd only; 1:nand only; 2,sd first
PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.dcim=2 \
    hw.cameras=1

#nand write need force sync when gadget
PRODUCT_PROPERTY_OVERRIDES += \
    gadget.nand.force_sync=true

#Ril
PRODUCT_PROPERTY_OVERRIDES += \
    hw.nophone=false
