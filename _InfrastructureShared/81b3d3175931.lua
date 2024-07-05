local L0_0, L1_1, L2_2, L3_3
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = this_sigattrlog
    L3_3 = L3_3[3]
    L3_3 = L3_3.utf8p1
    L2_2 = L2_2(L3_3)
    L1_1 = L2_2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[4]
    L2_2 = L2_2.utf8p1
    if L2_2 ~= nil then
      L2_2 = string
      L2_2 = L2_2.lower
      L3_3 = this_sigattrlog
      L3_3 = L3_3[4]
      L3_3 = L3_3.utf8p1
      L2_2 = L2_2(L3_3)
      L1_1 = L2_2
    end
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[5]
L2_2 = L2_2.matched
if L2_2 and L1_1 ~= nil then
  L2_2 = this_sigattrlog
  L0_0 = L2_2[5]
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = L0_0.utf8p1
  L2_2 = L2_2(L3_3)
  if L2_2 ~= nil then
    L3_3 = string
    L3_3 = L3_3.find
    L3_3 = L3_3(L2_2, L1_1, 1, true)
    if L3_3 then
      L3_3 = bm
      L3_3 = L3_3.add_related_file
      L3_3(L1_1)
      L3_3 = mp
      L3_3 = L3_3.INFECTED
      return L3_3
    end
  end
  L3_3 = string
  L3_3 = L3_3.lower
  L3_3 = L3_3(L0_0.utf8p2)
  if string.find(L3_3, L1_1, 1, true) then
    bm.add_related_file(L1_1)
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
