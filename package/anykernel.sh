# AnyKernel2 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=Flashing: The dummy Kernel...
do.devicecheck=1
do.modules=0
do.cleanup=1
do.cleanuponabort=0
device.name1=dummy-device
supported.versions=8 - 9
'; } # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. /tmp/anykernel/tools/ak2-core.sh;


## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
chmod -R 750 $ramdisk/*;
chown -R root:root $ramdisk/*;

ui_print " ";
ui_print "== WARNING ==";
ui_print "This is EAS kernel!";
ui_print "If you flash it on HMP rom you warranty is void...";
ui_print "...and don't even try to report any issues";
ui_print "=============";
ui_print " ";

## AnyKernel install
dump_boot;

# begin ramdisk changes

# end ramdisk changes

write_boot;

## end install

