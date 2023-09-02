ui_print "- Powerhint custom by DawfukFR & Eliaura"
ui_print "- The installation can take time,..."
ui_print "- For your safety, please be patient"

chmod 0644 /system/vendor/etc/powerhint.json

magiskpolicy --live "allow zygote vendor_fw_file dir { search write read open getattr map }"

sleep 50;

magiskpolicy --live "allow hal_power_default proc file { write read open getattr map }"
magiskpolicy --live "allow hal_power_default proc_sched file { write read open getattr map }"
magiskpolicy --live "allow hal_power_default sysfs file { write read open getattr map }"

stop vendor.power-hal-aidl;

start vendor.power-hal-aidl;
