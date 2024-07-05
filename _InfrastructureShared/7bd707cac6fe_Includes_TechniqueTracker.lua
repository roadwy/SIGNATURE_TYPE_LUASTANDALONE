local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L0_0.image_path)
  if string.find(L1_1, "java.exe") or string.find(L1_1, "javaw.exe") then
    return mp.CLEAN
  else
    TrackPidAndTechnique("CMDHSTR", "T1057", "discovery_lsass", 86400)
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
