if MpCommon.QuerySessionInformation(bm.get_current_process_startup_info().ppid, MpCommon.WTSIsRemoteSession) then
  bm.add_related_string("bmurl", MpCommon.QuerySessionInformation(bm.get_current_process_startup_info().ppid, MpCommon.WTSClientAddress).Address, bm.RelatedStringBMReport)
end
return mp.INFECTED
