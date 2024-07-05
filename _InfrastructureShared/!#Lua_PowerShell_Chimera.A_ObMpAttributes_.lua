local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 4096 or L0_0 > 7340032 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.gsub
L2_2 = tostring
L3_3 = headerpage
L2_2 = L2_2(L3_3)
L3_3 = " "
L4_4 = ""
L1_1 = L1_1(L2_2, L3_3, L4_4)
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "^#[A-Za-z%.]+"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L4_4 = L2_2
L3_3 = L2_2.len
L3_3 = L3_3(L4_4)
if L3_3 < 40 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = 0
L4_4 = 0
L5_5 = 0
L6_6 = 0
L7_7 = 0
L8_8 = nil
for L12_12 in L9_9(L10_10, L11_11) do
  L8_8 = L13_13
  if L8_8 then
    if L13_13 > 100 then
      L4_4 = L4_4 + 1
    elseif L13_13 > 40 then
      L3_3 = L3_3 + 1
    end
  else
    L8_8 = L13_13
    if L8_8 then
      if L13_13 >= 18 then
        if L13_13 > 80 then
          L6_6 = L6_6 + 1
        else
          L5_5 = L5_5 + 1
        end
      end
    elseif L13_13 > 3 then
      L8_8 = L13_13
      if L8_8 then
      elseif L13_13 < 20 then
        L7_7 = L7_7 + 1
        if L7_7 >= 10 then
          return L13_13
        end
      end
    end
  end
end
if not L9_9 then
  return L10_10
end
L12_12 = footerpage
L12_12 = " "
L12_12 = nil
for L16_16 in L13_13(L14_14, L15_15) do
  L12_12 = string.match(L16_16, "^#[%a%d%.]+$")
  if L12_12 and string.len(L12_12) > 40 then
    break
  end
  L8_8 = string.match(L16_16, "[%w%+/]+")
  if L8_8 and string.len(L8_8) > 18 then
    break
  end
end
if L11_11 then
  return L13_13
end
return L13_13
