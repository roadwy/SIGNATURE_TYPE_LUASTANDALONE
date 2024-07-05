local L0_0, L1_1
if this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].utf8p2
end
L1_1 = string.lower(mp.ContextualExpandEnvironmentVariables(L0_0))
if string.find(L0_0, ":\\windows", 2, true) or string.find(L1_1, ":\\windows", 2, true) then
  return mp.CLEAN
end
return mp.INFECTED
