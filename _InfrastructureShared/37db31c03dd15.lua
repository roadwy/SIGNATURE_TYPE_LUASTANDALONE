local L0_0
L0_0 = ""
if this_sigattrlog[7].matched then
  L0_0 = this_sigattrlog[7].utf8p2
elseif this_sigattrlog[8].matched then
  L0_0 = this_sigattrlog[8].utf8p2
elseif this_sigattrlog[9].matched then
  L0_0 = this_sigattrlog[9].utf8p2
elseif this_sigattrlog[10].matched then
  L0_0 = this_sigattrlog[10].utf8p2
end
if L0_0 ~= nil and L0_0 ~= "" and sysio.IsFileExists(L0_0) then
  bm.add_related_file(L0_0)
  return mp.INFECTED
end
return mp.CLEAN
