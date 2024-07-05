if MpCommon.QuerySessionInformation(bm.get_current_process_startup_info().ppid, MpCommon.WTSIsRemoteSession) then
  bm.add_related_string("bmurl", MpCommon.QuerySessionInformation(bm.get_current_process_startup_info().ppid, MpCommon.WTSClientAddress).Address, bm.RelatedStringBMReport)
  TrackAttackerServer(MpCommon.QuerySessionInformation(bm.get_current_process_startup_info().ppid, MpCommon.WTSClientAddress).Address)
end
return mp.INFECTED
