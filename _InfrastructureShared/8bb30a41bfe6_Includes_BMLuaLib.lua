local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p1
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.match
L2_2 = L0_0.lower
L2_2 = L2_2(L0_0)
L1_1 = L1_1(L2_2, "\\(mpksl[%w]+)")
L0_0 = L1_1
L1_1 = getService
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.utf8p2
if not L2_2 then
  return mp.CLEAN
end
L2_2 = L2_2:lower()
if L2_2 ~= L0_0 then
  return mp.INFECTED
end
return mp.CLEAN
