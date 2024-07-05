local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(MpCommon.PathToWin32Path(bm.get_imagepath()))
if L0_0 and (string.find(L0_0, "\\program files", 1, true) or string.find(L0_0, "\\windows", 1, true)) then
  if MpCommon.QueryPersistContext(L0_0, "NewPECreatedNoCert") then
    TrackPidAndTechniqueBM("BM", "T1071", "command_control_a")
    return mp.INFECTED
  end
  return mp.CLEAN
end
if not MpCommon.QueryPersistContext(L0_0, "ExecutedPENoCert") then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1071", "command_control_a")
return mp.INFECTED
