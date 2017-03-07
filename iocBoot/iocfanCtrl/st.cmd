#!../../bin/linux-x86_64/fanCtrl

## You may have to change fanCtrl to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase("dbd/fanCtrl.dbd")
fanCtrl_registerRecordDeviceDriver(pdbbase)

## Load record instances
dbLoadRecords("db/fanCtrl.db", "P=hps11")

cd "${TOP}/iocBoot/${IOC}"
iocInit
