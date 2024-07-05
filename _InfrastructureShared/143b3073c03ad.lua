if bm.get_current_process_startup_info().integrity_level >= MpCommon.SECURITY_MANDATORY_HIGH_RID then
  return mp.CLEAN
end
return mp.INFECTED
