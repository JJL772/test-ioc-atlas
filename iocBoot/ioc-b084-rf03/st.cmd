## Example RTEMS startup script

## You may have to change Jupiter to something else
## everywhere it appears in this file


setenv("LOCATION", "B084:RF03")
setenv("IOC_NAME", "IOC:B084:RF03")
setenv("ENGINEER", "Jeremy Lorelli (lorelli)")
cd("../..")

# Load obj file
ld("bin/RTEMS-mvme3100/atlas.obj")
# Let's look at the load addresses
lsmod()

## Register all support components
dbLoadDatabase("dbd/atlas.dbd")
atlas_registerRecordDeviceDriver(pdbbase)

# System Location:
epicsEnvSet("LOCA","B084")

epicsEnvSet("IOC_NAME","IOC:B084:RF03")
epicsEnvSet("EVR_DEV1","EVR:B084:RF03")
epicsEnvSet("UNIT","RF03")
epicsEnvSet("FAC","SYS0")

dbLoadRecords("db/iocAdminRTEMS.db","IOC=IOC:B084:RF03")
#dbLoadRecords("db/iocRelease.db"   ,"IOC=IOC:B084:RF03")

dbLoadRecords("db/save_restoreStatus.db", "P=IOC:B084:RF03:")

dbLoadRecords("db/atlasRecords.db", "P=IOC:B084:RF03")
dbLoadRecords("db/genRecords.db", "P=IOC:B084:RF03")

#=========================================================
# Init autosave
#=========================================================
. "iocBoot/common/autosave_rtems.cmd"

## Run this to trace the stages of iocInit
#traceIocInit()

iocInit()

