#!/system/bin/sh
# set some props, depending on device

set_device() {
    resetprop "ro.product.device" "$1"
    resetprop "ro.product.odm.device" "$1"
    resetprop "ro.product.product.device" "$1"
    resetprop "ro.product.system_ext.device" "$1"
    resetprop "ro.product.system.device" "$1"
    resetprop "ro.product.vendor.device" "$1"
}

set_name() {
    resetprop "ro.product.name" "$1"
    resetprop "ro.product.odm.name" "$1"
    resetprop "ro.product.product.name" "$1"
    resetprop "ro.product.system_ext.name" "$1"
    resetprop "ro.product.system.name" "$1"
    resetprop "ro.product.vendor.name" "$1"
}

set_brand() {
    resetprop "ro.product.brand" "$1"
    resetprop "ro.product.odm.brand" "$1"
    resetprop "ro.product.product.brand" "$1"
    resetprop "ro.product.vendor.brand" "$1"
}

set_model() {
    resetprop "ro.product.cert" "$1"
    resetprop "ro.product.model" "$1"
    resetprop "ro.product.odm.cert" "$1"
    resetprop "ro.product.odm.model" "$1"
    resetprop "ro.product.vendor.cert" "$1"
    resetprop "ro.product.vendor.model" "$1"
}

set_marketname() {
    resetprop "ro.product.marketname" "$1"
    resetprop "ro.product.odm.marketname" "$1"
    resetprop "ro.product.vendor.marketname" "$1"
    resetprop "vendor.usb.product_string" "$1"
}

board=$(getprop ro.boot.board_id)

case $board in
    "S88006AA1")
        set_brand "Redmi"
        set_device "veux"
        set_marketname "Redmi Note 11 Pro 5G"
        set_model "2201116SG"
        set_name "veux_global"
        ;;
    "S88007AA1")
        set_brand "Redmi"
        set_device "veux"
        set_marketname "Redmi Note 11E Pro"
        set_model "2201116SC"
        set_name "veux"
        ;;
    "S88007EA1")
        set_brand "Redmi"
        set_device "peux"
        set_marketname "Redmi Note 11 Pro+ 5G"
        set_model "2201116SI"
        set_name "peux_in"
        ;;
    "S88008BA1")
        set_brand "Redmi"
        set_device "veux"
        set_marketname "Redmi Note 11 Pro 5G"
        set_model "2201116SR"
        set_name "veux_jp"
        ;;
    "S88106BA1")
        set_brand "POCO"
        set_device "veux"
        set_marketname "POCO X4 Pro 5G"
        set_model "2201116PG"
        set_name "veux_p_global"
        ;;
    "S88107BA1")
        set_brand "POCO"
        set_device "peux"
        set_marketname "POCO X4 Pro 5G"
        set_model "2201116PI"
        set_name "peux_p_in"
        ;;
    *)
        echo "I: Unable to determine device variant" >> /tmp/recovery.log
        exit 1
esac