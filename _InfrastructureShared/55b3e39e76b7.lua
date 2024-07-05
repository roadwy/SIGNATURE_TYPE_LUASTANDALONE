if bm.get_current_process_startup_info().integrity_level == MpCommon.SECURITY_MANDATORY_SYSTEM_RID or bm.get_current_process_startup_info().integrity_level == MpCommon.SECURITY_MANDATORY_PROTECTED_PROCESS_RID then
  return mp.CLEAN
end
if this_sigattrlog[3].timestamp > this_sigattrlog[4].timestamp or bm.get_current_process_startup_info().ppid == nil or string.find(bm.get_current_process_startup_info().ppid, "pid:4$", 1, false) ~= nil or string.find(bm.get_current_process_startup_info().ppid, "pid:4,", 1, true) ~= nil then
  return mp.CLEAN
end
if bm.get_current_process_startup_info().integrity_level == MpCommon.SECURITY_MANDATORY_MEDIUM_RID and MpCommon.GetProcessElevationAndIntegrityLevel(this_sigattrlog[4].ppid).IntegrityLevel == MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
  return mp.INFECTED
end
if bm.get_current_process_startup_info().integrity_level == MpCommon.SECURITY_MANDATORY_HIGH_RID and MpCommon.GetProcessElevationAndIntegrityLevel(this_sigattrlog[4].ppid).IntegrityLevel == MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
  return mp.INFECTED
end
return mp.CLEAN
