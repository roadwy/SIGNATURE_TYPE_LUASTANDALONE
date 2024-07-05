if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().integrity_level ~= nil and bm.get_current_process_startup_info().integrity_level <= MpCommon.SECURITY_MANDATORY_HIGH_RID then
  return mp.INFECTED
end
return mp.CLEAN
