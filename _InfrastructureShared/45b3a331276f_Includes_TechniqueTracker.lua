local L0_0
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 100000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 and (string.find(L0_0, "\\fsprocsvc.exe", 1, true) or string.find(L0_0, "\\lmud1o4z.exe", 1, true) or string.find(L0_0, "\\curl.exe", 1, true)) then
  return mp.CLEAN
end
if bm.get_current_process_startup_info() ~= nil and (IsTechniqueObservedForPid(bm.get_current_process_startup_info().ppid, "T1036") or IsTechniqueObservedForParents(bm.get_current_process_startup_info().ppid, "T1036", 2)) then
  TrackPidAndTechniqueBM(bm.get_current_process_startup_info().ppid, "T1036", "masq_proc_netconnect")
  return mp.INFECTED
end
return mp.CLEAN
