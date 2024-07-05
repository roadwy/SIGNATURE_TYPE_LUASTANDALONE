local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L1_1 = this_sigattrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[4]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[4]
    L2_2 = L2_2.utf8p1
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
L1_1 = nil
L2_2 = this_sigattrlog
L2_2 = L2_2[7]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[7]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(L3_3)
    L1_1 = L2_2
  end
end
if L0_0 ~= nil and L1_1 ~= nil then
  L2_2 = L1_1.find
  L2_2 = L2_2(L3_3, L4_4)
  if not L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = mp
  L2_2 = L2_2.ContextualExpandEnvironmentVariables
  L2_2 = L2_2(L3_3)
  L0_0 = L2_2
  L2_2 = sysio
  L2_2 = L2_2.IsFileExists
  L2_2 = L2_2(L3_3)
  if L2_2 then
    L2_2 = bm
    L2_2 = L2_2.add_related_file
    L2_2(L3_3)
  end
  L2_2 = mp
  L2_2 = L2_2.GetExecutablesFromCommandLine
  L2_2 = L2_2(L3_3)
  for L6_6, L7_7 in L3_3(L4_4) do
    L7_7 = mp.ContextualExpandEnvironmentVariables(L7_7)
    if sysio.IsFileExists(L7_7) then
      bm.add_related_file(L7_7)
    end
  end
  return L3_3
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
