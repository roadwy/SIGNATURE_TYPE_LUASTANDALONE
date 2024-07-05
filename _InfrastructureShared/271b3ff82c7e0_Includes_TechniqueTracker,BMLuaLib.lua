local L0_0
L0_0 = is_excluded_parent_proc_auto
L0_0 = L0_0()
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = nil
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p2
elseif this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[3].utf8p2
elseif this_sigattrlog[4].matched and this_sigattrlog[4].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[4].utf8p2
elseif this_sigattrlog[5].matched and this_sigattrlog[5].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[5].utf8p2
end
if L0_0 == nil then
  return mp.CLEAN
end
if string.find(string.lower(L0_0), "-enc", 1, true) ~= nil then
  AddResearchData("BM", true)
  return mp.INFECTED
end
return mp.CLEAN
