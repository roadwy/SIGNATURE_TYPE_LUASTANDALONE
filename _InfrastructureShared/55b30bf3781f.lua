local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(this_sigattrlog[3].utf8p1)
  L0_0 = L1_1
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(bm.get_imagepath())
if L1_1 == nil or #L1_1 < #L0_0 then
  return mp.CLEAN
end
if string.find(L1_1, L0_0, 1, true) == nil then
  return mp.CLEAN
end
return mp.INFECTED
