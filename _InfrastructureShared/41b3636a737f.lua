local L0_0
if this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].utf8p2
end
if this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p2
end
if L0_0 ~= nil and sysio.IsFileExists(L0_0) then
  bm.add_related_file(L0_0)
end
return mp.INFECTED
