local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L0_0 = L1_1.utf8p2
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  L2_2 = string
  L2_2 = L2_2.find
  L6_6 = true
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  if not L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L6_6 = true
    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
    if not L2_2 then
      L2_2 = string
      L2_2 = L2_2.find
      L6_6 = true
      L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
    end
  elseif L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  if L0_0 ~= nil then
    L2_2 = string
    L2_2 = L2_2.len
    L2_2 = L2_2(L3_3)
    if L2_2 > 3 then
      L2_2 = mp
      L2_2 = L2_2.GetExecutablesFromCommandLine
      L2_2 = L2_2(L3_3)
      if L2_2 ~= nil then
        for L6_6, L7_7 in L3_3(L4_4) do
          L7_7 = mp.ContextualExpandEnvironmentVariables(L7_7)
          bm.add_related_file(L7_7)
        end
      end
      return L3_3
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
