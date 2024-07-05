local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  L2_2 = L0_0.ppid
  if L2_2 == nil then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = IsPidExcluded
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L4_4 = L1_1
  L3_3 = L1_1.match
  L5_5 = "([^\\]+)$"
  L3_3 = L3_3(L4_4, L5_5)
  L4_4 = {}
  L4_4["ng bailey image collector.exe"] = true
  L5_5 = L4_4[L3_3]
  if L5_5 then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L6_6 = L1_1
  L5_5 = L1_1.find
  L5_5 = L5_5(L6_6, "\\powershell.exe")
  if L5_5 then
    L5_5 = mp
    L5_5 = L5_5.GetProcessCommandLine
    L6_6 = L0_0.ppid
    L5_5 = L5_5(L6_6)
    if L5_5 ~= nil then
      L6_6 = string
      L6_6 = L6_6.lower
      L6_6 = L6_6(L5_5)
      L5_5 = L6_6
      L6_6 = L5_5.find
      L6_6 = L6_6(L5_5, "alwaysonvpn", 1, true)
      if L6_6 then
        L6_6 = mp
        L6_6 = L6_6.CLEAN
        return L6_6
      end
    end
  end
  L5_5 = GetDetectionThresholdMetReason
  L6_6 = L2_2
  L6_6 = L5_5(L6_6)
  if L5_5 and mp.bitxor(L6_6, 32) ~= 0 then
    return mp.LOWFI
  end
end
L1_1 = mp
L1_1 = L1_1.LOWFI
return L1_1
