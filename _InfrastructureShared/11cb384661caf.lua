local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[4]
  L0_0 = L1_1.utf8p1
end
if L0_0 ~= nil then
  L1_1 = bm
  L1_1 = L1_1.add_related_file
  L1_1(mp.ContextualExpandEnvironmentVariables(L0_0))
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
