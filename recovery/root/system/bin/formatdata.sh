#!/system/bin/sh
# Post data format script

format_frp() {
    echo "Formatting FRP data block"
    grep -q "/vendor " /proc/mounts || mount /vendor
    if [ $? -ne 0 ]; then
        echo "Failed to mount /vendor. Skipping..."
        exit
    fi
    FRP_BLOCK=$(grep "ro.frp.pst" /vendor/build.prop | cut -d'=' -f2)
    #FRP_BLOCK=/dev/block/bootdevice/by-name/frp
    if [ ! -e $FRP_BLOCK ]; then
        echo "No FRP partition found. Skipping."
        exit
    fi
    dd if=/dev/zero of=$FRP_BLOCK conv=fsync count=1 bs=$(blockdev --getsize64 $FRP_BLOCK)
}

format_frp;