local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L0_0 = L1_1.utf8p2
else
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.len
  L1_1 = L1_1(L2_2)
  if L1_1 > 3 then
    L1_1 = mp
    L1_1 = L1_1.GetExecutablesFromCommandLine
    L1_1 = L1_1(L2_2)
    if L1_1 ~= nil then
      for L5_5, L6_6 in L2_2(L3_3) do
        L6_6 = mp.ContextualExpandEnvironmentVariables(L6_6)
        bm.add_related_file(L6_6)
      end
    end
    return L2_2
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
