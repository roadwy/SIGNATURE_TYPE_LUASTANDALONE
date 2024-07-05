local L0_0
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p2
end
if not L0_0 then
  return mp.CLEAN
end
bm.add_related_file(L0_0)
return mp.INFECTED
