local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_NEWLYCREATEDHINT
L0_0 = L0_0(L1_1)
if L0_0 == true then
  L0_0 = 10800
  L1_1 = 10
  L2_2 = mp
  L2_2 = L2_2.enum_mpattributesubstring
  L2_2 = L2_2(L3_3)
  if L3_3 > 0 then
    for L6_6, L7_7 in L3_3(L4_4) do
      AppendToRollingQueue("ThreatsOnMachine_Lua", L7_7, 1, L0_0, L1_1)
    end
  end
  L2_2 = L3_3
  if L3_3 > 0 then
    for L6_6, L7_7 in L3_3(L4_4) do
      AppendToRollingQueue("ThreatsOnMachine_Lua", L7_7, 1, L0_0, L1_1)
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
