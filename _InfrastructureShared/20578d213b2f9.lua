local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
end
L1_1 = hstrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = hstrlog
  L1_1 = L1_1[4]
  L1_1 = L1_1.matched
end
L2_2 = hstrlog
L2_2 = L2_2[5]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = hstrlog
  L2_2 = L2_2[6]
  L2_2 = L2_2.matched
end
L3_3 = hstrlog
L3_3 = L3_3[7]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = hstrlog
  L3_3 = L3_3[8]
  L3_3 = L3_3.matched
end
if L0_0 and (L1_1 or L2_2 or L3_3) then
  L4_4 = mp
  L4_4 = L4_4.INFECTED
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.HSTR_WEIGHT
if L4_4 >= 3 then
  L4_4 = mp
  L4_4 = L4_4.LOWFI
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
