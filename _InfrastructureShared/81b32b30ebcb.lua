local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
L2_2 = nil
if L3_3 then
  L2_2 = L3_3.image_path
end
if L2_2 ~= nil then
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = L7_7.image_path
    if L8_8 == L2_2 then
      L8_8 = string
      L8_8 = L8_8.match
      L9_9 = L7_7.ppid
      L10_10 = "pid:(%w+),ProcessStart:(%w+)"
      L9_9 = L8_8(L9_9, L10_10)
      L10_10 = tonumber
      L11_11 = L8_8
      L10_10 = L10_10(L11_11)
      L11_11 = tonumber
      L12_12 = L9_9
      L11_11 = L11_11(L12_12)
      L12_12 = mp
      L12_12 = L12_12.bsplit
      L13_13 = L11_11
      L14_14 = 32
      L13_13 = L12_12(L13_13, L14_14)
      L14_14 = string
      L14_14 = L14_14.format
      L14_14 = L14_14("ppids:{{%d,%d,%d}}\000", L10_10, L12_12, L13_13)
      mp.TriggerScanResource("ems", L14_14)
    end
  end
end
return L3_3
