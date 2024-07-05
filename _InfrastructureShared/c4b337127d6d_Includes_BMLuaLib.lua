local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p2
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L0_0 = L2_2.utf8p2
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.utf8p2
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = this_sigattrlog
    L3_3 = L3_3[3]
    L3_3 = L3_3.utf8p2
    L2_2 = L2_2(L3_3)
    L1_1 = L2_2
  end
end
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 then
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L3_3 = L1_1
    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
    if L2_2 then
      L2_2 = pcall
      L3_3 = mp
      L3_3 = L3_3.GetInlineScriptsFromCommandLine
      L10_10 = L4_4(L5_5)
      L3_3 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L4_4(L5_5))
      if L2_2 and L3_3 then
        for L7_7, L8_8 in L4_4(L5_5) do
          L9_9 = pcall
          L10_10 = mp
          L10_10 = L10_10.ContextualExpandEnvironmentVariables
          L10_10 = L9_9(L10_10, L8_8)
          if L9_9 and L10_10 then
            bm.add_related_file(L10_10)
          end
        end
      end
      return L4_4
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
