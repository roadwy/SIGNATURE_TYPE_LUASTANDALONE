local L0_0
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p2
  if L0_0 == nil or L0_0 == "" or sysio.IsFileExists(L0_0) == false then
    return mp.CLEAN
  end
  if string.sub(L0_0, 1, 3) == "COM" then
    return mp.CLEAN
  end
  if string.find(L0_0, ".exe", -4, true) or string.find(L0_0, ".dll", -4, true) or string.find(L0_0, ".sys", -4, true) then
    bm.add_related_file(L0_0)
    return mp.INFECTED
  end
  return mp.CLEAN
end
return mp.CLEAN
