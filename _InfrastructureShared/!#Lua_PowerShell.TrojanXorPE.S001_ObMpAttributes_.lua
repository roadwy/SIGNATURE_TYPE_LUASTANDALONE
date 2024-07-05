local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 4096 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = tostring
L2_2 = mp
L2_2 = L2_2.readfooter
L17_17 = L2_2(L3_3, L4_4)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L2_2(L3_3, L4_4))
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.find
L6_6 = true
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readheader
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  return L3_3
end
for L6_6 in L3_3(L4_4, L5_5) do
  if L6_6 ~= nil and L6_6 ~= "" then
    L7_7 = ""
    L8_8 = ""
    for L12_12 in L9_9(L10_10, L11_11) do
      if L12_12 ~= nil then
        if L13_13 > 100 then
          L7_7 = L13_13
          if L7_7 ~= nil and L7_7 ~= "" then
            for L16_16 in L13_13(L14_14, L15_15) do
              L17_17 = L8_8
              L8_8 = L17_17 .. mp.bitxor(string.byte(L16_16), L6_6)
            end
          end
        end
      end
    end
    if L8_8 ~= nil and L8_8 ~= "" then
      if L9_9 ~= nil and L9_9 ~= "" then
        L10_10(L11_11)
      end
    end
    for L13_13 in L10_10(L11_11, L12_12) do
      if L13_13 ~= nil then
        if L14_14 > 100 then
          for L17_17 in L14_14(L15_15, L16_16) do
          end
        end
      end
    end
    if L9_9 ~= nil and L9_9 ~= "" then
      if L10_10 ~= nil and L11_11 ~= nil and L10_10 ~= "" and L11_11 ~= "" then
        L12_12(L13_13)
      end
    end
  end
end
for L6_6 in L3_3(L4_4, L5_5) do
  if L6_6 ~= nil and L6_6 ~= "" then
    L7_7 = ""
    L8_8 = ""
    for L12_12 in L9_9(L10_10, L11_11) do
      if L12_12 ~= nil then
        if L13_13 > 100 then
          L7_7 = L13_13
          if L7_7 ~= nil and L7_7 ~= "" then
            for L16_16 in L13_13(L14_14, L15_15) do
              L17_17 = L8_8
              L8_8 = L17_17 .. mp.bitxor(string.byte(L16_16), L6_6)
            end
          end
        end
      end
    end
    if L8_8 ~= nil and L8_8 ~= "" then
      if L9_9 ~= nil and L9_9 ~= "" then
        L10_10(L11_11)
      end
    end
    for L13_13 in L10_10(L11_11, L12_12) do
      if L13_13 ~= nil then
        if L14_14 > 100 then
          for L17_17 in L14_14(L15_15, L16_16) do
          end
        end
      end
    end
    if L9_9 ~= nil and L9_9 ~= "" then
      if L10_10 ~= nil and L11_11 ~= nil and L10_10 ~= "" and L11_11 ~= "" then
        L12_12(L13_13)
      end
    end
  end
end
return L3_3
