local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = string
L2_2 = L2_2.sub
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_FILENAME
L3_3 = L3_3(L4_4)
L4_4 = -3
L12_12 = L2_2(L3_3, L4_4)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L2_2(L3_3, L4_4))
L2_2 = string
L2_2 = L2_2.lower
L3_3 = string
L3_3 = L3_3.sub
L4_4 = mp
L4_4 = L4_4.get_contextdata
L5_5 = mp
L5_5 = L5_5.CONTEXT_DATA_FILENAME
L4_4 = L4_4(L5_5)
L5_5 = -4
L12_12 = L3_3(L4_4, L5_5)
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L3_3(L4_4, L5_5))
if L1_1 ~= ".js" and L2_2 ~= ".vbs" and L2_2 ~= ".ps1" and L2_2 ~= ".wsf" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = BuildHexadecimalHistogram
L3_3 = L3_3()
L4_4 = L3_3[1]
if L4_4 == 0 or L4_4 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = L3_3[2]
L6_6 = 0
L7_7 = 0
for L11_11, L12_12 in L8_8(L9_9) do
  if L11_11 > 3 then
    if L12_12 > L6_6 then
      L7_7 = L6_6
      L6_6 = L12_12
    elseif L12_12 < L6_6 and L12_12 > L7_7 then
      L7_7 = L12_12
    end
  end
end
if L9_9 == 0 or L9_9 == nil then
  return L10_10
end
L11_11 = 0
L12_12 = 0
for _FORV_16_, _FORV_17_ in pairs(L10_10) do
  if _FORV_16_ > 3 then
    if _FORV_17_ > L11_11 then
      L12_12 = L11_11
      L11_11 = _FORV_17_
    elseif _FORV_17_ < L11_11 and _FORV_17_ > L12_12 then
      L12_12 = _FORV_17_
    end
  end
end
if L4_4 * 100 / L9_9 >= 30 or (L6_6 + L7_7) * 100 / L9_9 >= 25 or L6_6 * 100 / L9_9 >= 20 or (L11_11 + L12_12) * 100 / L9_9 >= 40 or L11_11 * 100 / L9_9 >= 25 then
  return mp.INFECTED
end
return mp.CLEAN
