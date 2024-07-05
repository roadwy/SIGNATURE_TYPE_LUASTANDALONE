local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L0_0 = L2_2.utf8p2
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L1_1 = L2_2.utf8p2
  end
end
L2_2 = pcall
L3_3 = mp
L3_3 = L3_3.GetInlineScriptsFromCommandLine
L12_12 = L4_4(L5_5)
L3_3 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L4_4(L5_5))
if L2_2 and L3_3 then
  for L7_7, L8_8 in L4_4(L5_5) do
    L9_9 = pcall
    L10_10 = mp
    L10_10 = L10_10.ContextualExpandEnvironmentVariables
    L11_11 = L8_8
    L10_10 = L9_9(L10_10, L11_11)
    if L9_9 and L10_10 then
      L11_11 = bm
      L11_11 = L11_11.add_related_file
      L12_12 = L10_10
      L11_11(L12_12)
    end
  end
end
L12_12 = L6_6(L7_7)
if L4_4 and L5_5 then
  for L9_9, L10_10 in L6_6(L7_7) do
    L11_11 = pcall
    L12_12 = mp
    L12_12 = L12_12.ContextualExpandEnvironmentVariables
    L12_12 = L11_11(L12_12, L10_10)
    if L11_11 and L12_12 then
      bm.add_related_file(L12_12)
    end
  end
end
return L6_6
