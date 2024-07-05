local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
L0_0 = mp
L0_0 = L0_0.GetSMSMemRanges
L0_0 = L0_0()
for L4_4, L5_5 in L1_1(L2_2) do
  L6_6 = L5_5.prot
  if L6_6 == 64 then
    L6_6 = L5_5.state_type
    L7_7 = mp
    L7_7 = L7_7.bitor
    L8_8 = mp
    L8_8 = L8_8.SMS_MBI_COMMIT
    L9_9 = mp
    L9_9 = L9_9.SMS_MBI_PRIVATE
    L7_7 = L7_7(L8_8, L9_9)
    if L6_6 ~= L7_7 then
      L6_6 = L5_5.state_type
      L7_7 = mp
      L7_7 = L7_7.SMS_MBI_PRIVATE
    elseif L6_6 == L7_7 then
      L6_6 = L5_5.addr
      L7_7 = L5_5.size
      L8_8 = L7_7
      if L8_8 > 2048 then
        L8_8 = 2048
      end
      L9_9 = mp
      L9_9 = L9_9.ReadProcMem
      L10_10 = L6_6
      L11_11 = L8_8
      L9_9 = L9_9(L10_10, L11_11)
      if L9_9 ~= nil then
        L10_10 = string
        L10_10 = L10_10.find
        L11_11 = L9_9
        L12_12 = "This program cannot be run in DOS mode.\r\r\n"
        L13_13 = 1
        L14_14 = true
        L10_10 = L10_10(L11_11, L12_12, L13_13, L14_14)
        if L10_10 ~= nil and L10_10 >= 78 then
          L11_11 = 0
          L12_12 = 0
          L13_13 = L10_10 - 78
          L14_14 = mp
          L14_14 = L14_14.readu_u16
          L15_15 = L9_9
          L14_14 = L14_14(L15_15, L13_13)
          L15_15 = mp
          L15_15 = L15_15.readu_u16
          L15_15 = L15_15(L9_9, L13_13 + 60)
          L15_15 = L13_13 + L15_15
          if L15_15 < L8_8 - 7 then
            L11_11 = mp.readu_u16(L9_9, L15_15)
            L12_12 = mp.readu_u16(L9_9, L15_15 + 6)
          end
          if L14_14 == 23117 or L11_11 == 17744 or L12_12 >= 1 and L12_12 <= 16 then
            return mp.INFECTED
          end
        end
      end
    end
  end
end
return L1_1
