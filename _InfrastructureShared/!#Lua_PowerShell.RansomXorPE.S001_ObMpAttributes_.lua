local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 20480 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfooter
L2_2 = 0
L3_3 = 4096
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = tostring
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 == nil or L2_2 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = L2_2
L3_3 = L3_3(L4_4)
L2_2 = L3_3
L3_3 = string
L3_3 = L3_3.find
L4_4 = L2_2
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if L3_3 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.readheader
L4_4 = 0
L3_3 = L3_3(L4_4, L5_5)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = ""
for L8_8 in L5_5(L6_6, L7_7) do
  if L8_8 ~= nil and L8_8 ~= "" then
    for L12_12 in L9_9(L10_10, L11_11) do
      if L12_12 ~= nil and L12_12 ~= "" then
        L13_13 = L4_4
        L4_4 = L13_13 .. string.char(mp.bitxor(L12_12, L8_8))
      end
    end
  end
end
if L4_4 ~= nil and L4_4 ~= "" then
  L4_4 = L5_5
  if L5_5 ~= nil then
    L5_5(L6_6)
  end
end
for L9_9 in L6_6(L7_7, L8_8) do
  if L9_9 ~= nil and L9_9 ~= "" then
    for L13_13 in L10_10(L11_11, L12_12) do
      if L13_13 ~= nil and L13_13 ~= "" then
      end
    end
  end
end
if L5_5 ~= nil and L5_5 ~= "" then
  if L6_6 ~= nil then
    L6_6(L7_7)
  end
end
return L6_6
