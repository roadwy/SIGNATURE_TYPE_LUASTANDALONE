local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L2_2 = pcall
L3_3 = mp
L3_3 = L3_3.GetParentProcInfo
L3_3 = L2_2(L3_3)
if L2_2 and L3_3 ~= nil then
  L0_0 = L3_3.ppid
  L1_1 = L3_3.image_path
  L4_4 = string
  L4_4 = L4_4.lower
  L5_5 = L1_1
  L4_4 = L4_4(L5_5)
  L5_5 = L4_4.match
  L5_5 = L5_5(L4_4, "([^\\]+)$")
  if string.find(L5_5, "fusioninventory-agent_windows", 1, true) or string.find(L5_5, "ledkeeper2.exe", 1, true) or string.find(L5_5, "remote access.exe", 1, true) or string.find(L5_5, "skype.exe", 1, true) and string.find(L4_4, ":\\program files", 1, true) then
    return mp.CLEAN
  end
  if L0_0 ~= nil and L1_1 ~= nil then
    TrackPidAndTechnique(L0_0, "T1562.004", "disablefirewall")
    if IsDetectionThresholdMet(L0_0) then
      return mp.INFECTED
    end
  end
end
L4_4 = mp
L4_4 = L4_4.LOWFI
return L4_4
