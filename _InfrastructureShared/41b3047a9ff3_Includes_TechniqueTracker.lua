local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(MpCommon.PathToWin32Path(bm.get_imagepath()))
if not string.find(L0_0, "^c:\\") and not string.find(L0_0, "^\\\\") then
  return mp.CLEAN
end
if L0_0 and string.find(L0_0, "\\program files", 1, true) then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1071", "command_control_s")
return mp.INFECTED
