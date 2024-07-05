local L0_0
if this_sigattrlog[2].matched then
  L0_0 = string.lower(this_sigattrlog[2].utf8p1)
end
if L0_0 ~= nil then
  if string.find(L0_0, "\\microsoft.net\\framework") ~= nil then
    return mp.CLEAN
  end
  if sysio.IsFileExists(L0_0) then
    bm.add_related_file(L0_0)
    bm.add_threat_file(L0_0)
    return mp.INFECTED
  end
end
return mp.CLEAN
