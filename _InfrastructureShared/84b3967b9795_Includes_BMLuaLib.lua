local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p1
end
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.lower
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5
}
L5_5 = "\\windows\\pxiesys.ini\\system32\\"
for L5_5, L6_6 in L2_2(L3_3) do
  if contains(L0_0, L6_6, true) then
    return mp.CLEAN
  end
end
if L2_2 then
  L2_2(L3_3)
end
return L2_2
