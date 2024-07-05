local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L0_0 = L1_1.utf8p2
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(mp.ContextualExpandEnvironmentVariables(L0_0))
if L0_0 == nil or string.find(L1_1, "\\windows\\system32\\", 1, true) or mp.IsKnownFriendlyFile(L1_1, true, false) then
  return mp.CLEAN
end
bm.add_related_file(L1_1)
return mp.INFECTED
