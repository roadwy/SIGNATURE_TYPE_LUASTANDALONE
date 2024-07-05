local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  L3_3 = L1_1
  L2_2 = L1_1.match
  L4_4 = "([^\\]+)$"
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = {}
  L3_3["cscan.exe"] = true
  L3_3["ciscod.exe"] = true
  L3_3["abtsvchost_.exe"] = true
  L3_3["m_agent_service.exe"] = true
  L3_3["printixservice.exe"] = true
  L3_3["cthwiprvservice.exe"] = true
  L3_3["hpcommrecovery.exe"] = true
  L3_3["safeconnect.entry.exe"] = true
  L3_3["touchpointanalyticsclient.exe"] = true
  L4_4 = L3_3[L2_2]
  if L4_4 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = L1_1.find
  L4_4 = L4_4(L1_1, "\\powershell.exe")
  if L4_4 then
    L4_4 = mp
    L4_4 = L4_4.GetProcessCommandLine
    L4_4 = L4_4(L0_0.ppid)
    if L4_4 ~= nil then
      L4_4 = string.lower(L4_4)
      if L4_4:find("\\microsoft\\windows defender advanced threat protection\\datacollection\\", 1, true) then
        return mp.CLEAN
      end
    end
  end
end
L1_1 = TrackPidAndTechnique
L2_2 = "CMDHSTR"
L3_3 = "T1016"
L4_4 = "network_discovery"
L1_1(L2_2, L3_3, L4_4)
L1_1 = IsDetectionThresholdMet
L2_2 = "CMDHSTR"
L1_1 = L1_1(L2_2)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.LOWFI
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.LOWFI
return L1_1
