###################################################################################
#
# MMT Extended Config Script
#
###################################################################################

ui_print "Checking ROM and Kernel"
sleep 1
ui_print "° Kernel    : $(uname -r) "
sleep 0.5
ui_print "° ROM       : $(getprop ro.product.name) "
sleep 1
  platform=$(getprop ro.build.version.incremental)
  model=$(getprop ro.build.version.incremental)
  if [ "$platform" == "eng.mahaja.20201218.183759" -o "eng.ubuntu.20201212.154149" ]; then
    ui_print "√ [ $model ] is supported"
    ui_print " "
    ui_print " "
    ui_print " "
    ui_print "Module installed √"
  else
    abort  "× [ $model ] not supported"
    ui_print " "
    ui_print " "
    ui_print " "
    ui_print "Module is not installed √"
  fi
sleep 0.5
