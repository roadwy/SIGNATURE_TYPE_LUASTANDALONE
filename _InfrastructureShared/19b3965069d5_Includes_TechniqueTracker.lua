local L0_0, L1_1, L2_2, L3_3, L4_4
if L1_1 then
  L0_0 = L1_1.utf8p2
else
  return L1_1
end
if L0_0 ~= nil then
elseif L1_1 == 0 then
  return L1_1
end
for L4_4 in L1_1(L2_2, L3_3) do
  L4_4 = mp.ContextualExpandEnvironmentVariables(L4_4)
  if sysio.IsFileExists(L4_4) then
    bm.add_related_file(L4_4)
  end
end
L4_4 = "persistence_source"
L1_1(L2_2, L3_3, L4_4)
return L1_1
