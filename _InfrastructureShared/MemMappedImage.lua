local L1_0
function L1_0()
  local L0_1, L1_2, L2_3, L3_4, L4_5, L5_6, L6_7, L7_8, L8_9, L9_10, L10_11, L11_12, L12_13, L13_14, L14_15, L15_16
  L0_1 = mp
  L0_1 = L0_1.GetSMSMemRanges
  L0_1 = L0_1()
  for L4_5, L5_6 in L1_2(L2_3) do
    L6_7 = L5_6.prot
    if L6_7 == 64 then
      L6_7 = L5_6.state_type
      L7_8 = mp
      L7_8 = L7_8.bitor
      L8_9 = mp
      L8_9 = L8_9.SMS_MBI_COMMIT
      L9_10 = mp
      L9_10 = L9_10.SMS_MBI_PRIVATE
      L7_8 = L7_8(L8_9, L9_10)
      if L6_7 == L7_8 then
        L6_7 = L5_6.addr
        L7_8 = L5_6.size
        L8_9 = L7_8
        if L8_9 > 2048 then
          L8_9 = 2048
        end
        L9_10 = mp
        L9_10 = L9_10.ReadProcMem
        L10_11 = L6_7
        L11_12 = L8_9
        L9_10 = L9_10(L10_11, L11_12)
        if L9_10 ~= nil then
          L10_11 = string
          L10_11 = L10_11.find
          L11_12 = L9_10
          L12_13 = "This program cannot be run in DOS mode.\r\r\n"
          L13_14 = 1
          L14_15 = true
          L10_11 = L10_11(L11_12, L12_13, L13_14, L14_15)
          if L10_11 ~= nil and L10_11 >= 78 then
            L11_12 = 0
            L12_13 = 0
            L13_14 = L10_11 - 78
            L14_15 = mp
            L14_15 = L14_15.readu_u16
            L15_16 = L9_10
            L14_15 = L14_15(L15_16, L13_14)
            L15_16 = mp
            L15_16 = L15_16.readu_u16
            L15_16 = L15_16(L9_10, L13_14 + 60)
            L15_16 = L13_14 + L15_16
            if L15_16 < L8_9 - 7 then
              L11_12 = mp.readu_u16(L9_10, L15_16)
              L12_13 = mp.readu_u16(L9_10, L15_16 + 6)
            end
            if L14_15 == 23117 or L11_12 == 17744 or L12_13 >= 1 and L12_13 <= 16 then
              return true
            end
          end
        end
      end
    end
  end
  return L1_2
end
CheckMZPEIfMapped = L1_0
