local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = {}
L2_2 = {}
for L6_6 = 1, L0_0 do
  L7_7 = sigattr_tail
  L7_7 = L7_7[L6_6]
  L7_7 = L7_7.utf8p2
  L8_8 = sigattr_tail
  L8_8 = L8_8[L6_6]
  L8_8 = L8_8.attribute
  if L8_8 == 16491 then
    L8_8 = L7_7.find
    L12_12 = true
    L8_8 = L8_8(L9_9, L10_10, L11_11, L12_12)
    if L8_8 then
      L8_8 = {}
      for L12_12, L13_13 in L9_9(L10_10, L11_11) do
        L8_8[L12_12] = L13_13
      end
      if L9_9 >= 6 then
        if L9_9 then
          if L10_10 == nil then
            L1_1[L9_9] = L6_6
            L12_12 = "%.[^%.]+$"
            if L10_10 then
              L12_12 = L10_10
              if L11_11 == 0 then
                if L11_11 ~= nil then
                  L12_12 = L2_2[L10_10]
                  L13_13 = L9_9
                  L11_11(L12_12, L13_13)
                else
                  L12_12 = L9_9
                  L2_2[L10_10] = L11_11
                end
              end
            end
          end
        end
      end
    end
  end
end
for L7_7, L8_8 in L4_4(L5_5) do
  if L9_9 >= 10 then
    for L12_12, L13_13 in L9_9(L10_10) do
      table.insert(L3_3, L13_13)
    end
  end
end
if L4_4 >= 10 then
  L4_4.count = L5_5
  L4_4.file_list = L3_3
  L7_7 = safeJsonSerialize
  L8_8 = L4_4
  L13_13 = L7_7(L8_8)
  L5_5(L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L7_7(L8_8))
  return L5_5
end
return L4_4
