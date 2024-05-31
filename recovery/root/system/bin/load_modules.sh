#!/system/bin/sh

load()
{
        mkdir /mmqm
        mount -t ext4 -o ro /dev/block/by-name/socko /mmqm
        mkdir -p /vendor/lib/modules
        cp /mmqm/synaptics_dsx_td4310.ko /vendor/lib/modules/synaptics_dsx_td4310.ko
        insmod /vendor/lib/modules/synaptics_dsx_td4310.ko
        umount /mmqm
        rmdir /mmqm
}

load
wait 1

setprop modules.loaded 1

exit 0
