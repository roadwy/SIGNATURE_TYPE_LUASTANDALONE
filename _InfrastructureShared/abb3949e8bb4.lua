local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = L6_6.image_path
  if L7_7 ~= nil then
    L7_7 = mp
    L7_7 = L7_7.bitand
    L8_8 = L6_6.reason_ex
    L7_7 = L7_7(L8_8, L9_9)
    if L7_7 == 1 then
      L7_7 = L6_6.ppid
      if L7_7 ~= nil then
        L7_7 = bm
        L7_7 = L7_7.get_process_relationships
        L8_8 = L6_6.ppid
        L8_8 = L7_7(L8_8)
        for L12_12, L13_13 in L9_9(L10_10) do
          L14_14 = L13_13.image_path
          if L14_14 ~= nil then
            L14_14 = string
            L14_14 = L14_14.lower
            L14_14 = L14_14(L13_13.image_path)
            if string.find(L14_14, "sacsess.exe", 1, true) then
              return mp.INFECTED
            end
          end
        end
      end
    end
  end
end
return L2_2
