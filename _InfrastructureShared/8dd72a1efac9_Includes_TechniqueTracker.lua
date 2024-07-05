local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = IsPidExcluded
  L2_2 = L0_0.ppid
  L1_1 = L1_1(L2_2)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  L3_3 = L1_1
  L2_2 = L1_1.match
  L4_4 = "([^\\]+)$"
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = {}
  L3_3["net.exe"] = true
  L3_3["wazuh-agent.exe"] = true
  L4_4 = L3_3[L2_2]
  if L4_4 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  if L2_2 == "powershell.exe" then
    L4_4 = mp
    L4_4 = L4_4.GetProcessCommandLine
    L4_4 = L4_4(L0_0.ppid)
    if L4_4 ~= nil then
      L4_4 = string.lower(L4_4)
      if L4_4:find("\\microsoft\\windows defender advanced threat protection\\datacollection\\", 1, true) then
        return mp.CLEAN
      end
      if L4_4:find("windows\\imecache\\healthscripts", 1, true) then
        return mp.CLEAN
      end
      if L4_4:find("\\\\ossec-agent\\\\", 1, true) then
        return mp.CLEAN
      end
    end
  end
end
L1_1 = TrackPidAndTechnique
L2_2 = "CMDHSTR"
L3_3 = "T1033"
L4_4 = "user_discovery"
L1_1(L2_2, L3_3, L4_4)
L1_1 = IsDetectionThresholdMet
L2_2 = "CMDHSTR"
L1_1 = L1_1(L2_2)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.INFECTED
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.LOWFI
return L1_1
