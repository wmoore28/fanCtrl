#/bin/sh

setenv EPICS_DISPLAY_PATH "/usr/clas12/R3.14.12.5/synApps_5_8/std-3-4/stdApp/op/adl"

setenv EPICS_CA_ADDR_LIST "${EPICS_CA_ADDR_LIST} 129.57.86.152"

medm -x -macro "TITLE=Fan Ctrl Test,P=hps11:,PID=fanCtrl" pid_control.adl
