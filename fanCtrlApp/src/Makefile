TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS BELOW HERE

# Build the IOC application
PROD_IOC_Linux = fanCtrl

# fanCtrl.dbd will be created and installed
DBD += fanCtrl.dbd

# fanCtrl.dbd will include these files:
fanCtrl_DBD += base.dbd
fanCtrl_DBD += stdSupport.dbd
fanCtrl_DBD += cpid.dbd
fanCtrl_DBD += get_temp.dbd

# fanCtrl_registerRecordDeviceDriver.cpp derives from fanCtrl.dbd
fanCtrl_SRCS += fanCtrl_registerRecordDeviceDriver.cpp
fanCtrl_SRCS += get_temp.c

# Build the main IOC entry point where needed
fanCtrl_SRCS_DEFAULT += fanCtrlMain.cpp
fanCtrl_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#fanCtrl_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Link in the code from our support library
fanCtrl_LIBS += std cpid

# Finally link IOC to the EPICS Base libraries
fanCtrl_LIBS += $(EPICS_BASE_IOC_LIBS)

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD EXTRA GNUMAKE RULES BELOW HERE

