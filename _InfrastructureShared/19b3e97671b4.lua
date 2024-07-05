local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
end
if L0_0 ~= nil then
  L0_0 = string.lower(L0_0)
  if string.find(L0_0, "-verb:sync", 1, true) and string.find(L0_0, "-source:runcommand", 1, true) and string.find(L0_0, "-dest:runcommand=", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
