local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p1
  end
end
L1_1 = nil
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil then
  L1_1 = this_sigattrlog[2].utf8p1
end
L0_0 = string.lower(mp.ContextualExpandEnvironmentVariables(L0_0))
if not string.find(L0_0, "\\microsoft\\onedrive\\", 1, true) then
  return mp.INFECTED
end
L1_1 = string.lower(mp.ContextualExpandEnvironmentVariables(L1_1))
if not string.find(L1_1, "\\onedrive\\[%d+.]+", 1, true) then
  bm.add_related_file(L1_1)
  return mp.INFECTED
end
return mp.CLEAN
