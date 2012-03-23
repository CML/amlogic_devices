#!/system/bin/sh

case $1 in 
    480p)
        /system/xbin/busybox fbset -fb /dev/graphics/fb0 -g 1280 768 1280 1536 16 -rgba 5/11,6/5,5/0,0/0
        echo $1 > /sys/class/display/mode
    ;;

    720p)
        /system/xbin/busybox fbset -fb /dev/graphics/fb0 -g 1280 768 1280 1536 16 -rgba 5/11,6/5,5/0,0/0
        echo $1 > /sys/class/display/mode
        echo 240 120 800 480 240 120 18 18 > /sys/class/display/axis
    ;;

    1080p)
        /system/xbin/busybox fbset -fb /dev/graphics/fb0 -g 1280 768 1280 1536 16 -rgba 5/11,6/5,5/0,0/0
        echo $1 > /sys/class/display/mode
        echo 160 60 800 480 160 60 18 18 > /sys/class/display/axis
    ;;

    panel)
        /system/xbin/busybox fbset -fb /dev/graphics/fb0 -g 1280 768 1280 1536 16 -rgba 5/11,6/5,5/0,0/0
        echo $1 > /sys/class/display/mode
        echo 0 0 1280 768 0 0 18 18 > /sys/class/display/axis
    ;;
    
    *)
        echo "Error: Un-supported display mode $1"
        echo "       Default to panel"
        /system/bin/busybox fbset -fb /dev/graphics/fb0 -g 1280 768 1280 1536 16 -rgba 5/11,6/5,5/0,0/0
        echo $1 > /sys/class/display/mode
        echo 240 120 1280 768 240 120 18 18 > /sys/class/display/axis
esac
