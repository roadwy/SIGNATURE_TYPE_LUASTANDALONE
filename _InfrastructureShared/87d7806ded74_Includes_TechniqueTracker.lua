local L0_0
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == "" or L0_0 == nil then
  return mp.CLEAN
end
if mp.GetParentProcInfo() == nil or mp.GetParentProcInfo().ppid == nil or mp.GetParentProcInfo().image_path == nil then
  return mp.CLEAN
end
if string.lower(mp.GetParentProcInfo().image_path):find("ltsvc.exe$") then
  return mp.CLEAN
end
if string.lower(mp.GetParentProcInfo().image_path):find("nucleon-service.exe$") then
  return mp.CLEAN
end
TrackPidAndTechnique(L0_0, "T1490", "shadowcopy_delete")
if IsDetectionThresholdMet(L0_0) or IsDetectionThresholdMet(mp.GetParentProcInfo().ppid) then
  return mp.INFECTED
end
return mp.LOWFI
