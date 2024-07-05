local L0_0, L1_1, L2_2, L3_3
L1_1 = pcall
L2_2 = mp
L2_2 = L2_2.GetParentProcInfo
L2_2 = L1_1(L2_2)
if L1_1 and L2_2 ~= nil then
  L0_0 = L2_2.ppid
end
if L0_0 ~= nil then
  L3_3 = IsPidExcluded
  L3_3 = L3_3(L0_0)
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = IsTacticObservedForPid
  L3_3 = L3_3(L0_0, "processinjection")
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.LOWFI
    return L3_3
  end
end
L3_3 = mp
L3_3 = L3_3.GetScannedPPID
L3_3 = L3_3()
if L3_3 ~= "" and L3_3 ~= nil and IsTacticObservedForPid(L3_3, "processinjection_target") then
  return mp.LOWFI
end
return mp.CLEAN
