local L0_0
L0_0 = mp
L0_0 = L0_0.GetHSTRCallerId
L0_0 = L0_0()
if L0_0 ~= mp.HSTR_CALLER_SMS then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
function L0_0()
  local L0_1, L1_2, L2_3, L3_4, L4_5, L5_6, L6_7, L7_8, L8_9, L9_10, L10_11, L11_12, L12_13, L13_14, L14_15
  L0_1 = mp
  L0_1 = L0_1.GetSMSMemRanges
  L0_1 = L0_1()
  L14_15 = L2_3()
  for L4_5, L5_6 in L1_2(L2_3, L3_4, L4_5, L5_6, L6_7, L7_8, L8_9, L9_10, L10_11, L11_12, L12_13, L13_14, L14_15, L2_3()) do
    L6_7 = L5_6.matched
    if L6_7 then
      L6_7 = isSafeToRead
      L7_8 = L0_1
      L8_9 = L5_6.VA
      L9_10 = 16
      L6_7 = L6_7(L7_8, L8_9, L9_10)
      if L6_7 then
        L6_7 = mp
        L6_7 = L6_7.ReadProcMem
        L7_8 = L5_6.VA
        L8_9 = 16
        L6_7 = L6_7(L7_8, L8_9)
        L7_8 = mp
        L7_8 = L7_8.readu_u16
        L8_9 = L6_7
        L9_10 = 1
        L7_8 = L7_8(L8_9, L9_10)
        if L7_8 == 53643 then
          L7_8 = mp
          L7_8 = L7_8.readu_u32
          L8_9 = L6_7
          L9_10 = 6
          L7_8 = L7_8(L8_9, L9_10)
          L8_9 = L5_6.VA
          L7_8 = L7_8 + L8_9
          L7_8 = L7_8 + 9
          L8_9 = isSafeToRead
          L9_10 = L0_1
          L10_11 = L7_8
          L11_12 = 512
          L8_9 = L8_9(L9_10, L10_11, L11_12)
          if L8_9 then
            L8_9 = mp
            L8_9 = L8_9.ReadProcMem
            L9_10 = L7_8
            L10_11 = 512
            L8_9 = L8_9(L9_10, L10_11)
            L6_7 = L8_9
            L8_9 = mp
            L8_9 = L8_9.readu_u64
            L9_10 = L6_7
            L10_11 = 1
            L8_9 = L8_9(L9_10, L10_11)
            L9_10 = isSafeToRead
            L10_11 = L0_1
            L11_12 = L8_9
            L12_13 = 4
            L9_10 = L9_10(L10_11, L11_12, L12_13)
            if not L9_10 then
              L9_10 = mp
              L9_10 = L9_10.bsplit
              L10_11 = mp
              L10_11 = L10_11.bitand
              L11_12 = mp
              L11_12 = L11_12.shr64
              L12_13 = L7_8
              L13_14 = 32
              L11_12 = L11_12(L12_13, L13_14)
              L12_13 = 4294967295
              L10_11 = L10_11(L11_12, L12_13)
              L11_12 = 8
              L12_13 = L9_10(L10_11, L11_12)
              L13_14 = string
              L13_14 = L13_14.char
              L14_15 = mp
              L14_15 = L14_15.bitxor
              L14_15 = L14_15(L6_7:byte(5), L9_10)
              L13_14 = L13_14(L14_15, L14_15(L6_7:byte(5), L9_10))
              L14_15 = string
              L14_15 = L14_15.char
              L14_15 = L14_15(mp.bitxor(L6_7:byte(6), L10_11))
              L13_14 = L13_14 .. L14_15 .. string.char(mp.bitxor(L6_7:byte(7), L11_12)) .. string.char(mp.bitxor(L6_7:byte(8), L12_13))
              L14_15 = "([\\x00-\\xFF]+)"
              L14_15 = L14_15 .. L13_14
              if not MpCommon.BinaryRegExpSearch(L14_15, L6_7) then
                break
              end
              L8_9 = mp.bitxor(mp.readu_u64(L6_7, #MpCommon.BinaryRegExpSearch(L14_15, L6_7) - 3), mp.readu_u64(L6_7, 1))
              if not isSafeToRead(L0_1, L8_9, 4) then
                break
              end
            end
            L9_10 = reportDetectedRegions
            L10_11 = {
              L11_12,
              L12_13,
              L13_14
            }
            L11_12 = L8_9
            L12_13 = L7_8
            L13_14 = L5_6.VA
            L9_10(L10_11)
          end
        end
      end
    end
  end
end
pcallEx("get_regions", L0_0)
return mp.INFECTED
