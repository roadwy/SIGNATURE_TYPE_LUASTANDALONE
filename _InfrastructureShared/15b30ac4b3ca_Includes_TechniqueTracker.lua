local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(MpCommon.PathToWin32Path(bm.get_imagepath()))
if string.find(L0_0, "\\program files", 1, true) or string.find(L0_0, "\\activetraderpro", 1, true) then
  return mp.CLEAN
end
if not MpCommon.QueryPersistContext(L0_0, "ExecutedPENoCert") then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1571", "command_control_p")
return mp.INFECTED
