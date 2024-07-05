local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
end
if L0_0 and isTainted(L0_0, "upx_file_created_taint") then
  bm.add_related_file(L0_0)
  taint(L0_0, "upx_file_chmodexec", 3600)
  return mp.INFECTED
end
return mp.CLEAN
