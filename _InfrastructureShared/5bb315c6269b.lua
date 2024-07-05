local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(this_sigattrlog[1].utf8p2)
  L0_0 = L1_1
end
L1_1 = mp
L1_1 = L1_1.ContextualExpandEnvironmentVariables
L1_1 = L1_1(L0_0)
if L0_0 == nil or string.find(L1_1, "\\windows\\system32\\", 1, true) == nil or mp.IsKnownFriendlyFile(L1_1, true, false) then
  return mp.CLEAN
end
bm.add_threat_file(L1_1)
return mp.INFECTED
