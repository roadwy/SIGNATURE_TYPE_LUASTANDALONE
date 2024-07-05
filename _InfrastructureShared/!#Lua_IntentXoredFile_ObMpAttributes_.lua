local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = 256
L1_1 = tostring
L2_2 = pesecs
L2_2 = L2_2[3]
L2_2 = L2_2.Name
L1_1 = L1_1(L2_2)
if L1_1 ~= ".data" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readprotection
L2_2(L3_3)
L2_2 = mp
L2_2 = L2_2.readfile
L2_2 = L2_2(L3_3, L4_4)
L3_3(L4_4)
for L6_6 = 1, L0_0, 8 do
  L7_7 = mp
  L7_7 = L7_7.readu_u32
  L8_8 = L2_2
  L7_7 = L7_7(L8_8, L6_6)
  L8_8 = mp
  L8_8 = L8_8.readu_u32
  L8_8 = L8_8(L2_2, L6_6 + 4)
  if mp.bitxor(L7_7, L8_8) == 9460302 and L7_7 ~= 10115661 then
    return mp.INFECTED
  end
end
return L3_3
