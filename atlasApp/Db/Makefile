TOP=../..
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#----------------------------------------------------
#  Optimization of db files using dbst (DEFAULT: NO)
#DB_OPT = YES

#----------------------------------------------------
# Create and install (or just install) into <top>/db
# databases, templates, substitutions like this
#DB += xxx.db

DB_INSTALLS += $(IOCADMIN)/db/iocAdminRTEMS.db
IOCRELEASE_DB += iocRelease.db

DB_INSTALLS += $(AUTOSAVE)/db/save_restoreStatus.db

DB += atlasRecords.db
DB += genRecords.db info_positions.req info_settings.req

#----------------------------------------------------
# If <anyname>.db template is not named <anyname>*.template add
# <anyname>_template = <templatename>

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

