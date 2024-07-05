local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if not (L0_0 < 128) then
  L0_0 = mp
  L0_0 = L0_0.FOOTERPAGE_SZ
elseif L0_0 < 22 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L2_2 = 1
L0_0 = L0_0(L1_1, L2_2)
if L0_0 ~= 67324752 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.FOOTERPAGE_SZ
L1_1 = L1_1 - 21
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = footerpage
L4_4 = L1_1
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= 101010256 then
  L2_2 = 276
  L3_3 = mp
  L3_3 = L3_3.readfile
  L4_4 = L0_0 - L2_2
  L5_5 = L2_2
  L3_3 = L3_3(L4_4, L5_5)
  if L3_3 == nil then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L3_3
  L6_6 = "PK\005\006"
  L7_7 = 1
  L8_8 = true
  L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
  L1_1 = L4_4
  if L1_1 == nil then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = mp
  L4_4 = L4_4.FOOTERPAGE_SZ
  L4_4 = L1_1 + L4_4
  L1_1 = L4_4 - L2_2
end
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = footerpage
L4_4 = L1_1 + 12
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = footerpage
L5_5 = L1_1 + 16
L3_3 = L3_3(L4_4, L5_5)
if L2_2 >= 5000 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.readfile
L5_5 = L3_3
L6_6 = L2_2
L4_4 = L4_4(L5_5, L6_6)
if L4_4 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = 0
L6_6 = 0
L7_7 = 0
L8_8 = false
L9_9 = false
L10_10 = false
L11_11 = false
L12_12 = 0
L13_13 = 0
L14_14 = 1
L15_15 = mp
L15_15 = L15_15.readu_u32
L16_16 = L4_4
L17_17 = L14_14
L15_15 = L15_15(L16_16, L17_17)
if L15_15 ~= 33639248 then
  L15_15 = mp
  L15_15 = L15_15.CLEAN
  return L15_15
end
while L14_14 ~= nil do
  L15_15 = mp
  L15_15 = L15_15.readu_u16
  L16_16 = L4_4
  L17_17 = L14_14 + 28
  L15_15 = L15_15(L16_16, L17_17)
  L16_16 = string
  L16_16 = L16_16.sub
  L17_17 = L4_4
  L18_18 = L14_14 + 46
  L16_16 = L16_16(L17_17, L18_18, L14_14 + 46 + L15_15 - 1)
  L17_17 = mp
  L17_17 = L17_17.readu_u32
  L18_18 = L4_4
  L17_17 = L17_17(L18_18, L14_14 + 24)
  if L15_15 >= 6 and L16_16 ~= nil then
    L18_18 = string
    L18_18 = L18_18.find
    L18_18 = L18_18(L16_16, "word/media/image", 1, true)
    if L18_18 == 1 then
      L6_6 = L6_6 + 1
      L7_7 = L7_7 + L17_17
      L18_18 = string
      L18_18 = L18_18.sub
      L18_18 = L18_18(L16_16, 18)
      if L18_18 == ".jpeg" then
        L10_10 = true
      elseif L18_18 == ".jpg" then
        L11_11 = true
      elseif L18_18 == ".png" then
        L8_8 = true
      elseif L18_18 == ".emf" then
        L9_9 = true
      end
    else
      L18_18 = string
      L18_18 = L18_18.find
      L18_18 = L18_18(L16_16, "word/vbaProject.bin", 1, true)
      if L18_18 == 1 then
        L12_12 = L12_12 + 1
        L13_13 = L13_13 + L17_17
      end
    end
  end
  L5_5 = L5_5 + 1
  L18_18 = L14_14 + 46
  L18_18 = L18_18 + L15_15
  L14_14 = nil
  if L2_2 > L18_18 and mp.readu_u32(L4_4, L18_18) == 33639248 then
    L14_14 = L18_18
  end
end
if L6_6 == 1 and L12_12 == 1 and L8_8 and L5_5 == 16 and L0_0 >= 56000 and L0_0 <= 80000 and (L7_7 >= 22000 and L7_7 <= 25000 or L7_7 >= 34000 and L7_7 <= 47000) and (L13_13 >= 32000 and L13_13 <= 48000 or L13_13 >= 10000 and L13_13 <= 25000) then
  L15_15 = mp
  L15_15 = L15_15.set_mpattribute
  L16_16 = "//Lua:OfficeZip.SuspiciousStructure.A"
  L15_15(L16_16)
elseif L6_6 == 4 and L12_12 == 0 and L10_10 and L9_9 and L5_5 >= 20 and L5_5 <= 23 and L7_7 >= 65000 and L7_7 <= 70000 and L0_0 >= 75000 and L0_0 <= 80000 then
  L15_15 = mp
  L15_15 = L15_15.set_mpattribute
  L16_16 = "//Lua:OfficeZip.SuspiciousStructure.B"
  L15_15(L16_16)
end
L15_15 = mp
L15_15 = L15_15.CLEAN
return L15_15
