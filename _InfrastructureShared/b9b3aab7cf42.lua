local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = this_sigattrlog
L0_0 = L0_0[6]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[6]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[6]
    L0_0 = L0_0.utf8p2
    if L0_0 ~= nil then
      L1_1 = string
      L1_1 = L1_1.len
      L1_1 = L1_1(L2_2)
      if L1_1 > 4 then
        L1_1 = mp
        L1_1 = L1_1.GetExecutablesFromCommandLine
        L1_1 = L1_1(L2_2)
        if L1_1 ~= nil then
          for L5_5, L6_6 in L2_2(L3_3) do
            L6_6 = mp.ContextualExpandEnvironmentVariables(L6_6)
            bm.add_related_file(L6_6)
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
