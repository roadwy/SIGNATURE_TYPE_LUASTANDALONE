local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p1
L1_1 = L0_0
L0_0 = L0_0.lower
L0_0 = L0_0(L1_1)
L1_1 = L0_0
L0_0 = L0_0.match
L2_2 = "\\amsi\\providers\\({%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x})"
L0_0 = L0_0(L1_1, L2_2)
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.utf8p1
L2_2 = L1_1
L1_1 = L1_1.lower
L1_1 = L1_1(L2_2)
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.utf8p2
L3_3 = L2_2
L2_2 = L2_2.lower
L2_2 = L2_2(L3_3)
if L0_0 ~= nil and L1_1 ~= nil and L2_2 ~= nil then
  L3_3 = L1_1.find
  L7_7 = true
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.GetExecutablesFromCommandLine
    L3_3 = L3_3(L4_4)
    for L7_7, L8_8 in L4_4(L5_5) do
      L8_8 = mp.ContextualExpandEnvironmentVariables(L8_8)
      if sysio.IsFileExists(L8_8) then
        bm.add_related_file(L8_8)
      end
    end
    return L4_4
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
