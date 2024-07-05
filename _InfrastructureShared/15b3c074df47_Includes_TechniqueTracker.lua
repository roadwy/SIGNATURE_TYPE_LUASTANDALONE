local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(MpCommon.PathToWin32Path(bm.get_imagepath()))
if not string.find(L0_0, "^c:\\") and not string.find(L0_0, "^\\\\") then
  return mp.CLEAN
end
if string.find(L0_0, "\\program files", 1, true) or string.find(L0_0, "\\activetraderpro", 1, true) or string.find(L0_0, "\\fmr.", 1, true) or string.find(L0_0, "\\fidelity", 1, true) or string.find(L0_0, "\\dc.jobs", 1, true) or string.find(L0_0, "\\quickquote", 1, true) or string.find(L0_0, "\\pimsreminder.exe", 1, true) or string.find(L0_0, "\\3cxphonelookup.exe", 1, true) or string.find(L0_0, "\\indexingprocess.exe", 1, true) or string.find(L0_0, "\\etrapac.exe", 1, true) or string.find(L0_0, "\\pimspad.exe", 1, true) or string.find(L0_0, "\\calippo.api.exe", 1, true) or string.find(L0_0, "uniface.exe", 1, true) or string.find(L0_0, "\\l2dotnetlauncher", 1, true) then
  return mp.CLEAN
end
if not MpCommon.QueryPersistContext(L0_0, "ExecutedPENoCert") then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1571", "command_control_n")
return mp.INFECTED
