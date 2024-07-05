local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
L0_0 = peattributes
L0_0 = L0_0.ismsil
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pe
L0_0 = L0_0.get_netmetadata
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = hstrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 == false then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = hstrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 == false then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = hstrlog
L2_2 = L2_2[1]
L2_2 = L2_2.VA
L2_2 = L2_2 - 3
L3_3 = 4
L1_1 = L1_1(L2_2, L3_3)
L2_2 = pe
L2_2 = L2_2.mmap_va
L3_3 = hstrlog
L3_3 = L3_3[2]
L3_3 = L3_3.VA
L3_3 = L3_3 + 6
L4_4 = 4
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = L1_1
L5_5 = 1
L3_3 = L3_3(L4_4, L5_5)
L4_4 = mp
L4_4 = L4_4.readu_u32
L5_5 = L2_2
L6_6 = 1
L4_4 = L4_4(L5_5, L6_6)
L5_5 = L0_0.strheap_RVA
L6_6 = pe
L6_6 = L6_6.metadata_decode
L7_7 = L3_3
L8_8 = 2
L6_6 = L6_6(L7_7, L8_8)
L5_5 = L5_5 + L6_6
L6_6 = L0_0.strheap_RVA
L7_7 = pe
L7_7 = L7_7.metadata_decode
L8_8 = L4_4
L9_9 = 2
L7_7 = L7_7(L8_8, L9_9)
L6_6 = L6_6 + L7_7
L7_7 = pe
L7_7 = L7_7.foffset_rva
L8_8 = L5_5
L7_7 = L7_7(L8_8)
L8_8 = pe
L8_8 = L8_8.foffset_rva
L9_9 = L6_6
L8_8 = L8_8(L9_9)
L9_9 = mp
L9_9 = L9_9.readfile
L10_10 = L7_7
L11_11 = 7
L9_9 = L9_9(L10_10, L11_11)
L10_10 = mp
L10_10 = L10_10.readfile
L11_11 = L8_8
L12_12 = 6
L10_10 = L10_10(L11_11, L12_12)
L11_11 = string
L11_11 = L11_11.find
L12_12 = L9_9
L13_13 = "Replace"
L14_14 = 1
L11_11 = L11_11(L12_12, L13_13, L14_14, true)
if L11_11 == nil then
  L11_11 = mp
  L11_11 = L11_11.CLEAN
  return L11_11
end
L11_11 = string
L11_11 = L11_11.find
L12_12 = L10_10
L13_13 = "Invoke"
L14_14 = 1
L11_11 = L11_11(L12_12, L13_13, L14_14, true)
if L11_11 == nil then
  L11_11 = mp
  L11_11 = L11_11.CLEAN
  return L11_11
end
function L11_11(A0_15)
  local L1_16, L2_17, L3_18, L4_19, L5_20, L6_21, L7_22
  L1_16 = mp
  L1_16 = L1_16.bitand
  L2_17 = A0_15
  L3_18 = 255
  L1_16 = L1_16(L2_17, L3_18)
  L2_17 = mp
  L2_17 = L2_17.bitand
  L3_18 = A0_15
  L4_19 = 65280
  L2_17 = L2_17(L3_18, L4_19)
  L3_18 = mp
  L3_18 = L3_18.bitand
  L4_19 = A0_15
  L5_20 = 16711680
  L3_18 = L3_18(L4_19, L5_20)
  L4_19 = mp
  L4_19 = L4_19.bitand
  L5_20 = A0_15
  L6_21 = 4278190080
  L4_19 = L4_19(L5_20, L6_21)
  if L1_16 == 0 then
    L5_20 = 0
    L6_21 = 0
    return L5_20, L6_21
  else
    L5_20 = mp
    L5_20 = L5_20.bitand
    L6_21 = L1_16
    L7_22 = 128
    L5_20 = L5_20(L6_21, L7_22)
    if L5_20 == 0 then
      L5_20 = L1_16
      L6_21 = 1
      return L5_20, L6_21
    else
      L5_20 = mp
      L5_20 = L5_20.bitand
      L6_21 = L1_16
      L7_22 = 192
      L5_20 = L5_20(L6_21, L7_22)
      if L5_20 == 128 then
        L5_20 = mp
        L5_20 = L5_20.bitor
        L6_21 = mp
        L6_21 = L6_21.shl8
        L7_22 = mp
        L7_22 = L7_22.bitand
        L7_22 = L7_22(L1_16, 63)
        L6_21 = L6_21(L7_22, 8)
        L7_22 = L2_17
        L5_20 = L5_20(L6_21, L7_22)
        L6_21 = 2
        return L5_20, L6_21
      else
        L5_20 = mp
        L5_20 = L5_20.bitand
        L6_21 = L1_16
        L7_22 = 224
        L5_20 = L5_20(L6_21, L7_22)
        if L5_20 == 12 then
          L5_20 = mp
          L5_20 = L5_20.shl8
          L6_21 = mp
          L6_21 = L6_21.bitand
          L7_22 = L1_16
          L6_21 = L6_21(L7_22, 31)
          L7_22 = 24
          L5_20 = L5_20(L6_21, L7_22)
          L6_21 = mp
          L6_21 = L6_21.shl8
          L7_22 = L2_17
          L6_21 = L6_21(L7_22, 16)
          L7_22 = mp
          L7_22 = L7_22.shl8
          L7_22 = L7_22(L3_18, 8)
          return mp.bitor(mp.bitor(mp.bitor(L5_20, L6_21), L7_22), L4_19), 4
        else
          L5_20 = 0
          L6_21 = 0
          return L5_20, L6_21
        end
      end
    end
  end
end
DecodeBlob = L11_11
function L11_11(A0_23)
  if A0_23 == nil or A0_23 == "" or A0_23 == "\000" then
    return ""
  else
    return mp.utf16to8(A0_23)
  end
end
Uni2Ascii = L11_11
function L11_11(A0_24)
  local L1_25, L2_26, L3_27, L4_28, L5_29, L6_30
  L1_25 = mp
  L1_25 = L1_25.readu_u32
  L2_26 = A0_24
  L3_27 = 1
  L1_25 = L1_25(L2_26, L3_27)
  L2_26 = _UPVALUE0_
  L2_26 = L2_26.usheap_RVA
  L3_27 = mp
  L3_27 = L3_27.bitand
  L4_28 = L1_25
  L5_29 = 16777215
  L3_27 = L3_27(L4_28, L5_29)
  L2_26 = L2_26 + L3_27
  L3_27 = mp
  L3_27 = L3_27.readfile
  L4_28 = pe
  L4_28 = L4_28.foffset_rva
  L5_29 = L2_26
  L4_28 = L4_28(L5_29)
  L5_29 = 4
  L3_27 = L3_27(L4_28, L5_29)
  L4_28 = DecodeBlob
  L5_29 = mp
  L5_29 = L5_29.readu_u32
  L6_30 = L3_27
  L6_30 = L5_29(L6_30, 1)
  L5_29 = L4_28(L5_29, L6_30, L5_29(L6_30, 1))
  if L5_29 ~= 1 and L5_29 ~= 2 and L5_29 ~= 4 or L4_28 > 256 then
    L6_30 = ""
    return L6_30
  end
  L6_30 = mp
  L6_30 = L6_30.readfile
  L6_30 = L6_30(pe.foffset_rva(L2_26 + L5_29), L4_28)
  return Uni2Ascii(L6_30)
end
GetUserString = L11_11
L11_11 = GetUserString
L12_12 = pe
L12_12 = L12_12.mmap_va
L13_13 = hstrlog
L13_13 = L13_13[1]
L13_13 = L13_13.VA
L13_13 = L13_13 - 18
L14_14 = 4
L14_14 = L12_12(L13_13, L14_14)
L11_11 = L11_11(L12_12, L13_13, L14_14, L12_12(L13_13, L14_14))
L12_12 = GetUserString
L13_13 = pe
L13_13 = L13_13.mmap_va
L14_14 = hstrlog
L14_14 = L14_14[1]
L14_14 = L14_14.VA
L14_14 = L14_14 - 13
L14_14 = L13_13(L14_14, 4)
L12_12 = L12_12(L13_13, L14_14, L13_13(L14_14, 4))
L13_13 = GetUserString
L14_14 = pe
L14_14 = L14_14.mmap_va
L14_14 = L14_14(hstrlog[1].VA - 8, 4)
L13_13 = L13_13(L14_14, L14_14(hstrlog[1].VA - 8, 4))
L14_14 = string
L14_14 = L14_14.gsub
L14_14 = L14_14(L11_11, L12_12, L13_13)
if string.find(L14_14, "Initialize", 1, true) == nil then
  return mp.CLEAN
end
return mp.INFECTED
