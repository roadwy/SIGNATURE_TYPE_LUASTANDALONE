local L0_0
if this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].utf8p2
  if L0_0 ~= nil and L0_0 ~= "" and sysio.IsFileExists(L0_0) then
    bm.add_related_file(L0_0)
  end
  return mp.INFECTED
end
return mp.CLEAN
