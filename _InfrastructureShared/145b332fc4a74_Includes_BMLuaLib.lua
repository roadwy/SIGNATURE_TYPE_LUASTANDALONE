local L0_0, L1_1, L2_2
L0_0 = IsSenseRelatedProc
L0_0 = L0_0()
if L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0, L1_1 = nil, nil
L2_2 = this_sigattrlog
L2_2 = L2_2[15]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[15]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.match
    L2_2 = L2_2(this_sigattrlog[15].utf8p1, "\\([^\\]+%.exe)")
    L0_0 = L2_2
  end
end
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(bm.get_imagepath())
if L2_2 ~= nil and string.find(L2_2, "program files", 1, true) == nil and string.find(L2_2, "system32", 1, true) == nil then
  L1_1 = string.match(L2_2, "\\([^\\]+%.exe)")
end
if L1_1 ~= nil and L0_0 ~= nil then
  L1_1 = string.lower(L1_1)
  L0_0 = string.lower(L0_0)
  if L1_1 ~= L0_0 then
    return mp.INFECTED
  end
end
return mp.CLEAN
