local L0_0, L1_1, L2_2, L3_3
if this_sigattrlog[3].matched then
  L1_1 = this_sigattrlog[3].utf8p2
  L2_2, L3_3 = string.find(L1_1, ".dll,")
  if L2_2 ~= nil and L3_3 ~= nil then
    L0_0 = string.sub(L1_1, 1, L3_3 - 1)
  else
    L0_0 = L1_1
  end
  if L0_0 == nil or L0_0 == "" or sysio.IsFileExists(L0_0) == false then
    return mp.CLEAN
  end
  if string.find(L0_0, ".exe", -4, true) or string.find(L0_0, ".dll", -4, true) then
    bm.add_related_file(L0_0)
    return mp.INFECTED
  end
end
return mp.CLEAN
