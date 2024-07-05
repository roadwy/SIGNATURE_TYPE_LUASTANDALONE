local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.utf8p2
L0_0 = L0_0(L1_1)
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(this_sigattrlog[1].utf8p1)
if string.find(L0_0, ":\\windows\\", 1, true) then
  return mp.CLEAN
end
L1_1 = mp.ContextualExpandEnvironmentVariables(L1_1)
if L1_1 == nil or mp.IsKnownFriendlyFile(L1_1, true, false) then
  return mp.CLEAN
end
bm.add_threat_file(L0_0)
bm.add_threat_file(L1_1)
return mp.INFECTED
