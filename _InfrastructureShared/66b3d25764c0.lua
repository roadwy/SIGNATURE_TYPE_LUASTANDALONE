local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L1_1 = this_sigattrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[4]
  L0_0 = L1_1.utf8p2
  if L0_0 ~= nil then
    L1_1 = string
    L1_1 = L1_1.len
    L2_2 = L0_0
    L1_1 = L1_1(L2_2)
    if L1_1 > 3 then
      L1_1 = false
      L2_2 = mp
      L2_2 = L2_2.GetExecutablesFromCommandLine
      L2_2 = L2_2(L3_3)
      if L2_2 ~= nil then
        for L6_6, L7_7 in L3_3(L4_4) do
          L7_7 = mp.ContextualExpandEnvironmentVariables(L7_7)
          bm.add_related_file(L7_7)
          L1_1 = true
        end
      end
      if L1_1 then
        return L3_3
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
