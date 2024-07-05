local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.wp2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L0_0 = L1_1[2]
  end
else
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetExecutablesFromCommandLine
L2_2 = L0_0.utf8p2
L1_1 = L1_1(L2_2)
L2_2 = false
for L6_6, L7_7 in L3_3(L4_4) do
  L7_7 = mp.ContextualExpandEnvironmentVariables(L7_7)
  if sysio.IsFileExists(L7_7) and not mp.IsKnownFriendlyFile(L7_7, true, false) then
    L2_2 = true
    bm.add_related_file(L7_7)
  end
end
if L2_2 then
  return L3_3
end
return L3_3
