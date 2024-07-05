if bm.get_current_process_startup_info() == nil or bm.get_current_process_startup_info().integrity_level == nil then
  return mp.CLEAN
end
if bm.get_current_process_startup_info().integrity_level >= MpCommon.SECURITY_MANDATORY_MEDIUM_RID then
  return mp.CLEAN
end
return mp.INFECTED
