local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
function L0_0(A0_12, A1_13, A2_14, A3_15)
  if not A3_15 then
    error("need four bytes to convert to int", 2)
  end
  return A0_12 + A1_13 * 256 + A2_14 * 65536 + A3_15 * 16777216
end
bytes_to_int = L0_0
function L0_0(A0_16, A1_17)
  local L2_18, L3_19, L4_20, L5_21
  L2_18 = string
  L2_18 = L2_18.byte
  L3_19 = A0_16
  L4_20 = A1_17
  L2_18 = L2_18(L3_19, L4_20)
  L3_19 = string
  L3_19 = L3_19.byte
  L4_20 = A0_16
  L5_21 = A1_17 + 1
  L3_19 = L3_19(L4_20, L5_21)
  L4_20 = string
  L4_20 = L4_20.byte
  L5_21 = A0_16
  L4_20 = L4_20(L5_21, A1_17 + 2)
  L5_21 = string
  L5_21 = L5_21.byte
  L5_21 = L5_21(A0_16, A1_17 + 3)
  return (bytes_to_int(L2_18, L3_19, L4_20, L5_21))
end
pointer2int = L0_0
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.VA
L1_1 = 20
L2_2 = pe
L2_2 = L2_2.mmap_va
L3_3 = L0_0 - L1_1
L2_2 = L2_2(L3_3, L4_4)
L3_3 = nil
for L7_7 = 1, L1_1 do
  L8_8 = string
  L8_8 = L8_8.byte
  L9_9 = L2_2
  L10_10 = L7_7
  L8_8 = L8_8(L9_9, L10_10)
  if L8_8 == 138 then
    L9_9 = string
    L9_9 = L9_9.byte
    L10_10 = L2_2
    L11_11 = L7_7 + 5
    L9_9 = L9_9(L10_10, L11_11)
    if L9_9 == 0 then
      L10_10 = pointer2int
      L11_11 = L2_2
      L10_10 = L10_10(L11_11, L7_7 + 2)
      L3_3 = L10_10
      break
    end
  end
end
if L3_3 ~= nil then
  L7_7 = L4_4
  L8_8 = L5_5
  L7_7 = string
  L7_7 = L7_7.byte
  L8_8 = L4_4
  L9_9 = L5_5 + 2
  L7_7 = L7_7(L8_8, L9_9)
  L8_8 = string
  L8_8 = L8_8.byte
  L9_9 = L4_4
  L10_10 = L5_5 + 3
  L8_8 = L8_8(L9_9, L10_10)
  L9_9 = string
  L9_9 = L9_9.byte
  L10_10 = L4_4
  L11_11 = L5_5 + 32
  L9_9 = L9_9(L10_10, L11_11)
  L10_10 = string
  L10_10 = L10_10.byte
  L11_11 = L4_4
  L10_10 = L10_10(L11_11, L5_5 + 34)
  L11_11 = string
  L11_11 = L11_11.byte
  L11_11 = L11_11(L4_4, L5_5 + 35)
  if mp.bitxor(L6_6, L9_9) == 117 and mp.bitxor(L7_7, L10_10) == 255 and mp.bitxor(L8_8, L11_11) == 85 then
    return mp.SUSPICIOUS
  end
end
return L4_4
