local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.utf8p1
  end
end
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = sysio
L1_1 = L1_1.RegOpenKey
L2_2 = string
L2_2 = L2_2.sub
L2_2 = L2_2(L0_0, 1, -10)
L1_1 = L1_1(L2_2, L2_2(L0_0, 1, -10))
if L1_1 then
  L2_2 = sysio
  L2_2 = L2_2.GetRegValueAsBinary
  L2_2 = L2_2(L1_1, "element")
  if L2_2 and (#L2_2 > 1 or string.byte(L2_2) ~= 0) then
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
