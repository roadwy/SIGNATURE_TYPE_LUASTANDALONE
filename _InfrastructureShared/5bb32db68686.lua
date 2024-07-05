local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p2
end
L1_1 = mp
L1_1 = L1_1.ContextualExpandEnvironmentVariables
L1_1 = L1_1(L0_0)
if L0_0 == nil or mp.IsKnownFriendlyFile(L1_1, true, false) then
  return mp.CLEAN
end
bm.add_threat_file(L0_0)
return mp.INFECTED
