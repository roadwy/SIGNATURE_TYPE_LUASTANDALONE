local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
elseif this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p2
end
if sysio.IsFileExists(L0_0) and mp.IsKnownFriendlyFile(L0_0, true, false) == false then
  bm.add_threat_file(L0_0)
end
return mp.INFECTED
