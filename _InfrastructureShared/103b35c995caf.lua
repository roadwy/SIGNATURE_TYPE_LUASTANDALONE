local L0_0
if this_sigattrlog[8].matched then
  L0_0 = this_sigattrlog[8].utf8p2
end
L0_0 = string.lower(L0_0)
if L0_0 == nil or string.find(L0_0, "^%%", 0) or mp.IsKnownFriendlyFile(L0_0, true, false) then
  return mp.CLEAN
end
return mp.INFECTED
