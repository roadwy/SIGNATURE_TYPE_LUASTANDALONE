if bm.get_current_process_startup_info() and bm.get_current_process_startup_info().integrity_level < MpCommon.SECURITY_MANDATORY_SYSTEM_RID and this_sigattrlog[3].matched and MpCommon.GetProcessElevationAndIntegrityLevel(this_sigattrlog[3].ppid) and MpCommon.GetProcessElevationAndIntegrityLevel(this_sigattrlog[3].ppid).IntegrityLevel == MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
  return mp.INFECTED
end
return mp.CLEAN
