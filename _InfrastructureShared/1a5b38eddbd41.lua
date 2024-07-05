local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[5]
L0_0 = L0_0.utf8p2
L1_1 = this_sigattrlog
L1_1 = L1_1[5]
L1_1 = L1_1.utf8p1
L0_0 = string.lower(mp.ContextualExpandEnvironmentVariables(L0_0))
L1_1 = string.lower(mp.ContextualExpandEnvironmentVariables(L1_1))
if string.find(L0_0, ":\\program ", 1, true) then
  return mp.CLEAN
end
if L1_1 == nil or mp.IsKnownFriendlyFile(L1_1, true, false) then
  return mp.CLEAN
end
bm.add_related_file(L1_1)
bm.add_related_file(L0_0)
return mp.INFECTED
