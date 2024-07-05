local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = L6_6.image_path
  if L7_7 ~= nil then
    L7_7 = mp
    L7_7 = L7_7.bitand
    L8_8 = L6_6.reason_ex
    L9_9 = 1
    L7_7 = L7_7(L8_8, L9_9)
    if L7_7 == 1 then
      L8_8 = bm
      L8_8 = L8_8.get_process_relationships
      L9_9 = L6_6.ppid
      L9_9 = L8_8(L9_9)
      for L13_13, L14_14 in L10_10(L11_11) do
        L15_15 = L14_14.image_path
        if L15_15 ~= nil then
          L15_15 = mp
          L15_15 = L15_15.bitand
          L16_16 = L14_14.reason_ex
          L15_15 = L15_15(L16_16, 1)
          if L15_15 == 1 then
            L16_16 = string
            L16_16 = L16_16.lower
            L16_16 = L16_16(L14_14.image_path)
            if string.find(L16_16, "excel.exe", 1, true) or string.find(L16_16, "winword.exe", 1, true) then
              return mp.INFECTED
            end
          end
        end
      end
    end
  end
end
return L2_2
