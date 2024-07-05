local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 33554432 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.getfilename
L10_10 = L2_2()
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L2_2())
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "(nsis-instdata)"
L5_5 = -15
L6_6 = true
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 then
  L2_2 = 0
  L3_3 = 64
  L4_4 = mp
  L4_4 = L4_4.readprotection
  L5_5 = false
  L4_4(L5_5)
  L4_4 = mp
  L4_4 = L4_4.readfile
  L5_5 = L2_2
  L6_6 = 8
  L4_4 = L4_4(L5_5, L6_6)
  L5_5 = mp
  L5_5 = L5_5.readu_u32
  L6_6 = L4_4
  L5_5 = L5_5(L6_6, L7_7)
  if L5_5 == L0_0 then
    L6_6 = mp
    L6_6 = L6_6.readu_u32
    L6_6 = L6_6(L7_7, L8_8)
    L5_5 = L6_6
    L2_2 = 4
  end
  if L5_5 > 512 then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = mp
  L6_6 = L6_6.readfile
  L6_6 = L6_6(L7_7, L8_8)
  for L10_10 = 1, L3_3, 8 do
    if L0_0 < mp.readu_u32(L6_6, L10_10) then
      return mp.CLEAN
    end
  end
  L7_7(L8_8)
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
