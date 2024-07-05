if MpCommon.QuerySessionInformation(bm.get_current_process_startup_info().ppid, MpCommon.WTSIsRemoteSession) then
  return mp.INFECTED
end
return mp.CLEAN
