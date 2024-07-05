local L0_0, L1_1, L2_2
if this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].timestamp
end
if this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].timestamp
end
if this_sigattrlog[4].matched then
  L1_1 = this_sigattrlog[4].timestamp
  L2_2 = this_sigattrlog[4].utf8p1
end
L2_2 = string.lower(mp.ContextualExpandEnvironmentVariables(L2_2))
if L2_2 == nil or string.find(L2_2, "cachev..dat$", 1, false) or string.find(L2_2, ".cache$", 1, false) then
  return mp.CLEAN
end
if L0_0 <= L1_1 then
  return mp.INFECTED
end
return mp.CLEAN
