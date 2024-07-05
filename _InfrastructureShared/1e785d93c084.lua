local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = pe
  L0_0 = L0_0.mmap_va
  L1_1 = hstrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.VA
  L2_2 = 176
  L0_0 = L0_0(L1_1, L2_2)
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = "%z&%z'%z5"
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 ~= nil then
    L2_2 = mp
    L2_2 = L2_2.readu_u16
    L3_3 = L0_0
    L4_4 = 7
    L2_2 = L2_2(L3_3, L4_4)
    L3_3 = string
    L3_3 = L3_3.sub
    L4_4 = L0_0
    L5_5 = 9
    L6_6 = 9 + L2_2
    L3_3 = L3_3(L4_4, L5_5, L6_6)
    L4_4 = mp
    L4_4 = L4_4.crc32
    L5_5 = 4294967295
    L6_6 = L3_3
    L7_7 = 1
    L8_8 = L2_2
    L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
    L5_5 = mp
    L5_5 = L5_5.set_mpattribute
    L6_6 = string
    L6_6 = L6_6.format
    L7_7 = "HSTR:VB:Susp:F:%x"
    L8_8 = L4_4
    L16_16 = L6_6(L7_7, L8_8)
    L5_5(L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L6_6(L7_7, L8_8))
    L5_5 = string
    L5_5 = L5_5.sub
    L6_6 = L0_0
    L7_7 = L1_1 + 6
    L8_8 = L1_1 + 6
    L8_8 = L8_8 + 16
    L5_5 = L5_5(L6_6, L7_7, L8_8)
    L6_6 = mp
    L6_6 = L6_6.readu_u32
    L7_7 = L5_5
    L8_8 = 1
    L6_6 = L6_6(L7_7, L8_8)
    L7_7 = mp
    L7_7 = L7_7.readu_u32
    L8_8 = L5_5
    L9_9 = 5
    L7_7 = L7_7(L8_8, L9_9)
    L8_8 = mp
    L8_8 = L8_8.readu_u32
    L9_9 = L5_5
    L10_10 = 9
    L8_8 = L8_8(L9_9, L10_10)
    L9_9 = mp
    L9_9 = L9_9.readu_u32
    L10_10 = L5_5
    L11_11 = 13
    L9_9 = L9_9(L10_10, L11_11)
    if L6_6 > 2000 then
      L10_10 = mp
      L10_10 = L10_10.set_mpattribute
      L11_11 = "HSTR:VB:Susp:FSx2000"
      L10_10(L11_11)
    end
    if L6_6 > 6000 then
      L10_10 = mp
      L10_10 = L10_10.set_mpattribute
      L11_11 = "HSTR:VB:Susp:FSx6000"
      L10_10(L11_11)
    end
    if L7_7 > 2000 then
      L10_10 = mp
      L10_10 = L10_10.set_mpattribute
      L11_11 = "HSTR:VB:Susp:FSy2000"
      L10_10(L11_11)
    end
    if L7_7 > 6000 then
      L10_10 = mp
      L10_10 = L10_10.set_mpattribute
      L11_11 = "HSTR:VB:Susp:FSy6000"
      L10_10(L11_11)
    end
    if L8_8 == 0 then
      L10_10 = mp
      L10_10 = L10_10.set_mpattribute
      L11_11 = "HSTR:VB:Susp:FSw0"
      L10_10(L11_11)
    end
    if L8_8 > 2000 then
      L10_10 = mp
      L10_10 = L10_10.set_mpattribute
      L11_11 = "HSTR:VB:Susp:FSw2000"
      L10_10(L11_11)
    end
    if L8_8 > 6000 then
      L10_10 = mp
      L10_10 = L10_10.set_mpattribute
      L11_11 = "HSTR:VB:Susp:FSw6000"
      L10_10(L11_11)
    end
    if L9_9 == 0 then
      L10_10 = mp
      L10_10 = L10_10.set_mpattribute
      L11_11 = "HSTR:VB:Susp:FSh0"
      L10_10(L11_11)
    end
    if L9_9 > 2000 then
      L10_10 = mp
      L10_10 = L10_10.set_mpattribute
      L11_11 = "HSTR:VB:Susp:FSh2000"
      L10_10(L11_11)
    end
    if L9_9 > 6000 then
      L10_10 = mp
      L10_10 = L10_10.set_mpattribute
      L11_11 = "HSTR:VB:Susp:FSh6000"
      L10_10(L11_11)
    end
    L10_10 = string
    L10_10 = L10_10.find
    L11_11 = L0_0
    L12_12 = "\000\004\001"
    L13_13 = 1
    L14_14 = true
    L10_10 = L10_10(L11_11, L12_12, L13_13, L14_14)
    if L10_10 ~= nil then
      L11_11 = mp
      L11_11 = L11_11.readu_u16
      L12_12 = L0_0
      L13_13 = L10_10 + 3
      L11_11 = L11_11(L12_12, L13_13)
      L12_12 = string
      L12_12 = L12_12.sub
      L13_13 = L0_0
      L14_14 = L10_10 + 3
      L14_14 = L14_14 + 2
      L15_15 = L10_10 + 3
      L15_15 = L15_15 + 2
      L15_15 = L15_15 + L11_11
      L12_12 = L12_12(L13_13, L14_14, L15_15)
      L13_13 = mp
      L13_13 = L13_13.crc32
      L14_14 = 4294967295
      L15_15 = L12_12
      L16_16 = 1
      L13_13 = L13_13(L14_14, L15_15, L16_16, L11_11)
      L14_14 = mp
      L14_14 = L14_14.set_mpattribute
      L15_15 = string
      L15_15 = L15_15.format
      L16_16 = "HSTR:VB:Susp:BT:%x"
      L16_16 = L15_15(L16_16, L13_13)
      L14_14(L15_15, L16_16, L15_15(L16_16, L13_13))
      L14_14 = string
      L14_14 = L14_14.find
      L15_15 = string
      L15_15 = L15_15.reverse
      L16_16 = string
      L16_16 = L16_16.sub
      L16_16 = L16_16(L0_0, 1, L10_10 - 1)
      L15_15 = L15_15(L16_16, L16_16(L0_0, 1, L10_10 - 1))
      L16_16 = "%z"
      L14_14 = L14_14(L15_15, L16_16)
      L14_14 = L10_10 - L14_14
      L15_15 = string
      L15_15 = L15_15.sub
      L16_16 = L0_0
      L15_15 = L15_15(L16_16, L14_14 + 1, L10_10 - 1)
      L12_12 = L15_15
      L15_15 = mp
      L15_15 = L15_15.crc32
      L16_16 = 4294967295
      L15_15 = L15_15(L16_16, L12_12, 1, L10_10 - L14_14 - 1)
      L13_13 = L15_15
      L15_15 = mp
      L15_15 = L15_15.set_mpattribute
      L16_16 = string
      L16_16 = L16_16.format
      L16_16 = L16_16("HSTR:VB:Susp:BN:%x", L13_13)
      L15_15(L16_16, L16_16("HSTR:VB:Susp:BN:%x", L13_13))
      L15_15 = string
      L15_15 = L15_15.find
      L16_16 = string
      L16_16 = L16_16.sub
      L16_16 = L16_16(L0_0, L10_10 + 3)
      L15_15 = L15_15(L16_16, "\000\004", 1, true)
      if L15_15 ~= nil then
        L16_16 = string
        L16_16 = L16_16.sub
        L16_16 = L16_16(string.sub(L0_0, L10_10 + 3), L15_15 + 2, L15_15 + 2 + 8)
        if mp.readu_u16(L16_16, 1) > 2000 then
          mp.set_mpattribute("HSTR:VB:Susp:BSx2000")
        end
        if mp.readu_u16(L16_16, 1) > 6000 then
          mp.set_mpattribute("HSTR:VB:Susp:BSx6000")
        end
        if 2000 < mp.readu_u16(L16_16, 3) then
          mp.set_mpattribute("HSTR:VB:Susp:BSy2000")
        end
        if 6000 < mp.readu_u16(L16_16, 3) then
          mp.set_mpattribute("HSTR:VB:Susp:BSy6000")
        end
        if mp.readu_u16(L16_16, 5) == 0 then
          mp.set_mpattribute("HSTR:VB:Susp:BSw0")
        end
        if mp.readu_u16(L16_16, 5) > 500 then
          mp.set_mpattribute("HSTR:VB:Susp:BSw500")
        end
        if mp.readu_u16(L16_16, 5) > 1000 then
          mp.set_mpattribute("HSTR:VB:Susp:BSw1000")
        end
        if mp.readu_u16(L16_16, 5) > 2000 then
          mp.set_mpattribute("HSTR:VB:Susp:BSw2000")
        end
        if mp.readu_u16(L16_16, 5) > 6000 then
          mp.set_mpattribute("HSTR:VB:Susp:BSw6000")
        end
        if mp.readu_u16(L16_16, 7) == 0 then
          mp.set_mpattribute("HSTR:VB:Susp:BSh0")
        end
        if mp.readu_u16(L16_16, 7) > 500 then
          mp.set_mpattribute("HSTR:VB:Susp:BSh500")
        end
        if mp.readu_u16(L16_16, 7) > 1000 then
          mp.set_mpattribute("HSTR:VB:Susp:BSh1000")
        end
        if mp.readu_u16(L16_16, 7) > 2000 then
          mp.set_mpattribute("HSTR:VB:Susp:BSh2000")
        end
        if mp.readu_u16(L16_16, 7) > 6000 then
          mp.set_mpattribute("HSTR:VB:Susp:BSh6000")
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
