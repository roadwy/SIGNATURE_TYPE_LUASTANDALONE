local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 >= 1048576 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pe
L1_1 = L1_1.get_netmetadata
L1_1 = L1_1()
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = 0
L3_3 = 0
L4_4 = 0
L5_5 = 0
L6_6 = 0
L7_7 = 0
L8_8 = {
  L9_9,
  L10_10,
  L11_11,
  L12_12,
  L13_13,
  L14_14,
  L15_15,
  L16_16,
  L17_17,
  L18_18,
  L19_19,
  L20_20,
  L21_21,
  33,
  36,
  41,
  42,
  43,
  44
}
L15_15 = 11
L16_16 = 13
L17_17 = 18
L21_21 = 28
for L12_12 = 1, #L8_8 do
  if L13_13 == 1 then
    L3_3 = L14_14.count
  elseif L13_13 == 7 then
    L4_4 = L14_14.count
  elseif L13_13 == 9 then
    L6_6 = L14_14.count
  elseif L13_13 == 11 then
    L7_7 = L14_14.count
  elseif L13_13 == 33 then
    L5_5 = L14_14.count
  end
  L15_15 = L14_14.count
  L2_2 = L2_2 + L15_15
end
if L3_3 == 1 then
  if L12_12 then
    L15_15 = 3
    L15_15 = 64
    if L13_13 then
      if L14_14 == 12 then
        L15_15 = L13_13
        L16_16 = "[%l%d]+.[de][lx][le]"
        if L14_14 == 1 then
          L15_15 = "Lua:MSIL:PossiblyDynGenRuntimeClass.A"
          L14_14(L15_15)
        end
      end
    end
  end
else
  L12_12(L13_13)
end
if L5_5 == 1 then
  if L12_12 then
    L15_15 = L12_12
    if L13_13 == "0x00000000" then
      L13_13(L14_14)
    end
  end
end
for L15_15 = 1, L9_9 do
  L16_16 = L1_1.strheap_RVA
  L17_17 = pe
  L17_17 = L17_17.metadata_decode
  L17_17 = L17_17(L18_18, L19_19)
  L16_16 = L16_16 + L17_17
  L17_17 = pe
  L17_17 = L17_17.mmap_string_rva
  L17_17 = L17_17(L18_18, L19_19)
  if L17_17 and not L10_10 then
    for L21_21 = 1, #L17_17 do
      if L17_17:byte(L21_21) >= 126 or L17_17:byte(L21_21) <= 32 then
        break
      end
    end
  end
  if L17_17 then
  end
end
if L10_10 or L11_11 then
  L12_12(L13_13)
end
if L2_2 < 100000 then
  L15_15 = L2_2
  L12_12(L13_13)
  L15_15 = L4_4
  L12_12(L13_13)
  L15_15 = L6_6
  L12_12(L13_13)
  L15_15 = L7_7
  L12_12(L13_13)
end
if L2_2 == 158 and L4_4 == 10 and L6_6 == 5 and L7_7 == 46 then
  L12_12(L13_13)
elseif (L4_4 == 625 or L4_4 == 630) and L6_6 == 135 and (L7_7 == 288 or L7_7 == 280) then
  L12_12(L13_13)
elseif L2_2 == 236 and L4_4 == 22 and L6_6 == 15 and L7_7 == 51 then
  L12_12(L13_13)
elseif L2_2 == 263 and L4_4 == 22 and L6_6 == 8 and L7_7 == 63 then
  L12_12(L13_13)
end
return L12_12
