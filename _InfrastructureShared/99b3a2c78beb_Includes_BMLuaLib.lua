local L0_0
if this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p2
  if string.find(L0_0, "/format:", 1, true) ~= nil then
    addRelatedProcess()
    return mp.INFECTED
  end
end
return mp.CLEAN
