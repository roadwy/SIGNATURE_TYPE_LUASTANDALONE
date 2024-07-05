local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 300000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = nil
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.utf8p1
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = this_sigattrlog
    L3_3 = L3_3[2]
    L3_3 = L3_3.utf8p1
    L2_2 = L2_2(L3_3)
    L1_1 = L2_2
  end
end
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L2_2 = L2_2(L3_3, "([^\\]+)$")
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.find
L3_3 = L3_3(L2_2, ":", 1, true)
if L3_3 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = nil
if this_sigattrlog[4].matched and this_sigattrlog[4].utf8p2 ~= nil then
  L3_3 = string.lower(this_sigattrlog[4].utf8p2)
end
if string.find(L3_3, L0_0, 1, true) == nil then
  return mp.CLEAN
end
return mp.INFECTED
