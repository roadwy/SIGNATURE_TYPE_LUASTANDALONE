local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L0_0.image_path)
  if string.find(L1_1, "\\programdata\\microsoft\\azurewatson\\0\\awdumpifeo.exe", 1, true) or string.find(L1_1, "\\windows\\system32\\werfault.exe", 1, true) or string.find(L1_1, "\\windows\\syswow64\\werfault.exe", 1, true) then
    return mp.CLEAN
  end
end
L1_1 = TrackPidAndTechnique
L1_1("CMDHSTR", "T1003.001", "credentialdumping_concrete", 86400)
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
