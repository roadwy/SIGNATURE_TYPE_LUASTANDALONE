local L0_0
if this_sigattrlog[1].matched then
  L0_0 = string.lower(this_sigattrlog[1].utf8p1)
end
if L0_0 ~= nil and string.find(L0_0, ".dll", -4, true) and string.find(L0_0, "_31bf3856ad364e35\\", 1, true) == nil then
  if sysio.IsFileExists(L0_0) then
    bm.add_related_file(L0_0)
  end
  return mp.INFECTED
end
return mp.CLEAN
