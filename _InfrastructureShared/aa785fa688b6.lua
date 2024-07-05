local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
L0_0 = hstrlog
L0_0 = L0_0[2]
L0_0 = L0_0.VA
L1_1 = hstrlog
L1_1 = L1_1[1]
L1_1 = L1_1.VA
if L0_0 < L1_1 then
  L0_0 = hstrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.VA
  L1_1 = hstrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.VA
  L0_0 = L0_0 - L1_1
  if L0_0 < 1024 then
    L0_0 = 11
    L1_1 = 10
    L2_2 = mp
    L2_2 = L2_2.readu_u32
    L3_3 = pe
    L3_3 = L3_3.mmap_va
    L4_4 = hstrlog
    L4_4 = L4_4[2]
    L4_4 = L4_4.VA
    L4_4 = L4_4 + 4
    L5_5 = 4
    L3_3 = L3_3(L4_4, L5_5)
    L4_4 = 1
    L2_2 = L2_2(L3_3, L4_4)
    L3_3 = pe
    L3_3 = L3_3.mmap_va
    L4_4 = L2_2
    L5_5 = L0_0 * 2
    L5_5 = L5_5 + 1
    L3_3 = L3_3(L4_4, L5_5)
    L4_4 = mp
    L4_4 = L4_4.utf16to8
    L5_5 = L3_3
    L4_4 = L4_4(L5_5)
    L3_3 = L4_4
    L4_4 = mp
    L4_4 = L4_4.readu_u32
    L5_5 = pe
    L5_5 = L5_5.mmap_va
    L6_6 = hstrlog
    L6_6 = L6_6[3]
    L6_6 = L6_6.VA
    L6_6 = L6_6 + 13
    L7_7 = 4
    L5_5 = L5_5(L6_6, L7_7)
    L6_6 = 1
    L4_4 = L4_4(L5_5, L6_6)
    L5_5 = pe
    L5_5 = L5_5.mmap_va
    L6_6 = L4_4
    L7_7 = L1_1 * 4
    L7_7 = L7_7 + 2
    L7_7 = L7_7 + 2
    L5_5 = L5_5(L6_6, L7_7)
    L6_6 = mp
    L6_6 = L6_6.utf16to8
    L7_7 = L5_5
    L6_6 = L6_6(L7_7)
    L7_7 = ""
    for L11_11 = 3, L9_9 + 2, 2 do
      L12_12 = tonumber
      L13_13 = string
      L13_13 = L13_13.sub
      L14_14 = L6_6
      L13_13 = L13_13(L14_14, L11_11 - 2, L11_11 - 1)
      L14_14 = 16
      L12_12 = L12_12(L13_13, L14_14)
      L13_13 = tonumber
      L14_14 = string
      L14_14 = L14_14.sub
      L14_14 = L14_14(L6_6, L11_11, L11_11 + 1)
      L13_13 = L13_13(L14_14, 16)
      L14_14 = string
      L14_14 = L14_14.byte
      L14_14 = L14_14(L3_3, (L11_11 - 1) / 2)
      if mp.bitxor(L13_13, L14_14) - L12_12 < 0 then
        L7_7 = L7_7 .. string.char(mp.bitxor(L13_13, L14_14) - L12_12 + 255)
      else
        L7_7 = L7_7 .. string.char(mp.bitxor(L13_13, L14_14) - L12_12)
      end
    end
    if L7_7 == "cmd /c tas" then
      return L8_8
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
