local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 20000 or L0_0 > 400000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L2_2 = footerpage
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "'..?.?.?.?.?.?.?.?.?'[,%+]"
L4_4 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  return mp.CLEAN
end
while 0 < 250 do
  L2_2, L3_3, L4_4 = string.find(L1_1, "'..?.?.?.?.?.?.?.?.?'[,%+]", L3_3)
  if L2_2 == nil then
    break
  end
  if L3_3 > #L1_1 - 20 then
    break
  end
end
if 0 + 1 > 200 then
  return mp.INFECTED
end
return mp.CLEAN
