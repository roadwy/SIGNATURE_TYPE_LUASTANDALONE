local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.ppid
if L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = TrackPidAndTechnique
L2_2 = L0_0.ppid
L1_1(L2_2, L3_3, L4_4)
L1_1 = GetTacticsTableForPid
L2_2 = L0_0.ppid
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = 0
for L6_6, _FORV_7_ in L3_3(L4_4) do
  if string.find(L6_6, "mt2023", 1, true) then
    L2_2 = L2_2 + 1
  end
end
if L2_2 > 2 then
  return L3_3
end
return L3_3
