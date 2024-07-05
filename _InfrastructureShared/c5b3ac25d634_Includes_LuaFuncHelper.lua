local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
L0_0 = this_sigattrlog
L0_0 = L0_0[4]
L1_1 = L0_0.matched
if L1_1 then
  L1_1 = L0_0.ppid
  L1_1 = L1_1 and L0_0.utf8p2
elseif not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.format
L2_2 = "DetectedRegions:%s"
L3_3 = L0_0.ppid
L1_1 = L1_1(L2_2, L3_3)
L2_2 = GetRollingQueue
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 then
  L3_3 = type
  L3_3 = L3_3(L4_4)
elseif L3_3 ~= "table" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = 0
for L7_7, L8_8 in L4_4(L5_5) do
  L9_9 = 32768
  for L13_13 = 1, #L11_11, L9_9 do
    L3_3 = L3_3 + 1
    L14_14 = string
    L14_14 = L14_14.format
    L15_15 = "f09d0e89_%d"
    L14_14 = L14_14(L15_15, L3_3)
    L15_15 = string
    L15_15 = L15_15.sub
    L15_15 = L15_15(L8_8.value, L13_13, L13_13 + L9_9 - 1)
    bm.add_related_string(L14_14, L15_15, bm.RelatedStringBMReport)
  end
  if L3_3 == 0 then
    return L10_10
  end
  L3_3 = L3_3 + 1
  L13_13 = ";"
  L14_14 = bm
  L14_14 = L14_14.RelatedStringBMReport
  L11_11(L12_12, L13_13, L14_14)
end
if L3_3 == 0 then
  return L4_4
end
L7_7 = bm
L7_7 = L7_7.RelatedStringBMReport
L4_4(L5_5, L6_6, L7_7)
return L4_4
