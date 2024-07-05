local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 4096 or L0_0 > 5242880 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = headerpage
L3_3 = 1
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = headerpage
L4_4 = 5
L2_2 = L2_2(L3_3, L4_4)
if L1_1 == 0 or L2_2 == 0 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = headerpage
L5_5 = 33
L3_3 = L3_3(L4_4, L5_5)
L4_4 = mp
L4_4 = L4_4.bitxor
L5_5 = L1_1
L6_6 = L3_3
L4_4 = L4_4(L5_5, L6_6)
if L4_4 ~= 9460301 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = ""
L5_5 = 0
L6_6 = 0
L7_7 = 0
L8_8 = 32
L9_9 = 64
L10_10 = mp
L10_10 = L10_10.readheader
L11_11 = 0
L10_10 = L10_10(L11_11, L12_12)
L11_11 = mp
L11_11 = L11_11.readheader
L11_11 = L11_11(L12_12, L13_13)
for L15_15 = 1, L9_9 do
  L5_5 = string.byte(L11_11, L15_15)
  L6_6 = string.byte(L10_10, (L15_15 - 1) % L8_8 + 1)
  L7_7 = mp.bitxor(L5_5, L6_6)
  L4_4 = L4_4 .. string.char(L7_7)
end
L15_15 = L4_4
if L14_14 == "MZ\144\000\003\000\000\000\004\000\000\000\255\255\000\000" then
  L15_15 = L4_4
  if L14_14 == "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000" then
    L15_15 = L4_4
    if L14_14 < 512 then
      L15_15 = "MpNonPIIFileType"
      L14_14(L15_15)
      return L14_14
    end
  end
end
return L14_14
