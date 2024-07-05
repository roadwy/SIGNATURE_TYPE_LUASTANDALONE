local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L1_1 = pe
L1_1 = L1_1.IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR
L0_0 = L0_0[L1_1]
L0_0 = L0_0.RVA
L1_1 = pehdr
L1_1 = L1_1.DataDirectory
L2_2 = pe
L2_2 = L2_2.IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR
L1_1 = L1_1[L2_2]
L1_1 = L1_1.Size
if L0_0 == 0 or L1_1 == 0 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = pe
L2_2 = L2_2.mmap_rva
L3_3 = L0_0
L4_4 = 20
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = L2_2
L5_5 = 1
L3_3 = L3_3(L4_4, L5_5)
if L3_3 ~= 72 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = L2_2
L5_5 = 9
L3_3 = L3_3(L4_4, L5_5)
L4_4 = pe
L4_4 = L4_4.mmap_rva
L5_5 = L3_3
L6_6 = 256
L4_4 = L4_4(L5_5, L6_6)
L5_5 = mp
L5_5 = L5_5.readu_u32
L6_6 = L4_4
L7_7 = 1
L5_5 = L5_5(L6_6, L7_7)
if L5_5 ~= 1112167234 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.readu_u32
L6_6 = L4_4
L7_7 = 13
L5_5 = L5_5(L6_6, L7_7)
L6_6 = string
L6_6 = L6_6.sub
L7_7 = L4_4
L8_8 = 17
L9_9 = 18
L6_6 = L6_6(L7_7, L8_8, L9_9)
if L6_6 == "v2" then
  L7_7 = mp
  L7_7 = L7_7.set_mpattribute
  L8_8 = "Lua:MSIL:FrameworkV2"
  L7_7(L8_8)
elseif L6_6 == "v4" then
  L7_7 = mp
  L7_7 = L7_7.set_mpattribute
  L8_8 = "Lua:MSIL:FrameworkV4"
  L7_7(L8_8)
else
  L7_7 = mp
  L7_7 = L7_7.set_mpattribute
  L8_8 = "Lua:MSIL:UnknownFrameworkVersion"
  L7_7(L8_8)
end
L7_7 = 17 + L5_5
L8_8 = L7_7 + 4
L9_9 = L7_7 + 2
if L9_9 >= 256 then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = mp
L9_9 = L9_9.readu_u16
L10_10 = L4_4
L11_11 = L7_7 + 2
L9_9 = L9_9(L10_10, L11_11)
if L9_9 ~= 5 then
  L10_10 = mp
  L10_10 = L10_10.set_mpattribute
  L11_11 = "Lua:MSIL:NonStandardStreamCount"
  L10_10(L11_11)
end
L10_10 = {}
L10_10["#~"] = true
L10_10["#GUID"] = true
L10_10["#US"] = true
L10_10["#Blob"] = true
L10_10["#Strings"] = true
L11_11 = L8_8
for L15_15 = 0, L9_9 - 1 do
  if L15_15 >= 20 or L11_11 >= 256 then
    break
  end
  L11_11 = L11_11 + 8
  L16_16 = ""
  while L11_11 < 256 and L4_4:byte(L11_11) ~= 0 do
    L16_16 = L16_16 .. string.char(L4_4:byte(L11_11))
    L11_11 = L11_11 + 1
  end
  if L10_10[L16_16] == nil then
    mp.set_mpattribute("Lua:MSIL:NonStandardStreamName")
    break
  end
  L11_11 = L11_11 + (#L16_16 + 4 - #L16_16 % 4 - #L16_16)
end
return L12_12
