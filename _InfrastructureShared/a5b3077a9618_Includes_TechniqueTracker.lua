local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = GetTechniquesTableForPid
L1_1 = "BM"
L0_0 = L0_0(L1_1)
L1_1 = GetTacticsTableForPid
L2_2 = "BM"
L1_1 = L1_1(L2_2)
if L1_1 ~= nil and L0_0 ~= nil then
  L2_2 = bm
  L2_2 = L2_2.get_process_relationships
  L3_3 = L2_2()
  for L7_7, L8_8 in L4_4(L5_5) do
    for L12_12, _FORV_13_ in L9_9(L10_10) do
      AddTacticForPid(L8_8.ppid, L12_12)
    end
    for L12_12, _FORV_13_ in L9_9(L10_10) do
      AddTechniqueForPid(L8_8.ppid, L12_12)
    end
    L12_12 = "tt_to_child"
    L9_9(L10_10, L11_11, L12_12)
  end
end
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
