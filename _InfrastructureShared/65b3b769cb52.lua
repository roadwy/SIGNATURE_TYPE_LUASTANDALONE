if bm.get_current_process_startup_info().integrity_level > MpCommon.SECURITY_MANDATORY_MEDIUM_RID then
  return mp.CLEAN
end
if MpCommon.GetProcessElevationAndIntegrityLevel(bm.get_current_process_startup_info().ppid).IntegrityLevel > bm.get_current_process_startup_info().integrity_level then
  return mp.INFECTED
end
return mp.CLEAN
