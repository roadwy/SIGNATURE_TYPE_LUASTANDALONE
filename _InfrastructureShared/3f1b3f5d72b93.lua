local L0_0
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p1
elseif this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].utf8p1
elseif this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p1
elseif this_sigattrlog[4].matched then
  L0_0 = this_sigattrlog[4].utf8p1
end
if L0_0 and mp.IsKnownFriendlyFile(L0_0, false, true) == false then
  bm.add_related_file(L0_0)
  return mp.INFECTED
end
return mp.CLEAN
