local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
end
if L0_0 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.GetExecutablesFromCommandLine
  L1_1 = L1_1(L2_2)
  for L5_5, L6_6 in L2_2(L3_3) do
    L7_7 = sysio
    L7_7 = L7_7.IsFileExists
    L7_7 = L7_7(L6_6)
    if L7_7 then
      L7_7 = bm
      L7_7 = L7_7.add_related_file
      L7_7(L6_6)
    end
  end
end
L1_1 = nil
if L2_2 then
  if L2_2 ~= nil then
    L1_1 = L2_2.utf8p2
  end
end
if L1_1 ~= nil then
  for L6_6, L7_7 in L3_3(L4_4) do
    L7_7 = mp.ContextualExpandEnvironmentVariables(L7_7)
    if sysio.IsFileExists(L7_7) == true then
      bm.add_related_file(L7_7)
    end
  end
end
return L2_2
