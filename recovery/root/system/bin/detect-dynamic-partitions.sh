#!/system/bin/sh

if dd if=/dev/block/by-name/system bs=256k count=1|strings|grep xiaomi_dynamic_partitions > /dev/null; then
    # Dynamic partitions
    cat /system/etc/recovery.fstab.dynamic >> /system/etc/recovery.fstab
else
    # Normal partition
    cat /system/etc/twrp.flags.normal >> /system/etc/twrp.flags
fi
