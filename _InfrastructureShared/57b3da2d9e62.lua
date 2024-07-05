local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[1]
    L0_0 = L0_0.utf8p2
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
    if L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L2_2 = L0_0
      L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
      if L1_1 then
        L1_1 = nil
        L2_2 = this_sigattrlog
        L2_2 = L2_2[1]
        L2_2 = L2_2.matched
        if L2_2 then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[1]
          L2_2 = L2_2.utf8p2
          if L2_2 ~= nil then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[1]
            L1_1 = L2_2.utf8p2
          end
        end
        L2_2 = mp
        L2_2 = L2_2.GetExecutablesFromCommandLine
        L2_2 = L2_2(L3_3)
        for L6_6, L7_7 in L3_3(L4_4) do
          L7_7 = mp.ContextualExpandEnvironmentVariables(L7_7)
          bm.add_threat_file(L7_7)
        end
        return L3_3
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
