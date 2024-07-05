local L0_0, L1_1, L2_2, L3_3
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L0_0 = L2_2.utf8p1
  end
end
L2_2 = string
L2_2 = L2_2.match
L3_3 = L0_0
L3_3 = L2_2(L3_3, "(.-)([^\\]-)$")
L1_1 = L3_3
_ = L2_2
L2_2 = bm
L2_2 = L2_2.get_imagepath
L2_2 = L2_2()
L3_3 = nil
if L2_2 ~= nil then
  _, L3_3 = string.match(L2_2, "(.-)([^\\]-)$")
end
if L3_3 ~= nil and L1_1 ~= nil and string.lower(L3_3) == string.lower(L1_1) then
  return mp.INFECTED
end
return mp.CLEAN
