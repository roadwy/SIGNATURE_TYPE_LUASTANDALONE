local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = {
  L1_1,
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  L8_8,
  L9_9,
  L10_10,
  L11_11,
  L12_12,
  L13_13,
  72
}
L1_1 = 81
L2_2 = 87
L3_3 = 69
L4_4 = 82
L5_5 = 84
L6_6 = 89
L7_7 = 65
L8_8 = 83
L12_12 = 75
L13_13 = 71
L1_1 = hstrlog
L1_1 = L1_1[1]
L1_1 = L1_1.VA
L2_2 = hstrlog
L2_2 = L2_2[2]
L2_2 = L2_2.VA
L3_3 = pe
L3_3 = L3_3.mmap_va
L4_4 = L1_1 + 4
L5_5 = 1
L3_3 = L3_3(L4_4, L5_5)
L4_4 = pe
L4_4 = L4_4.mmap_va
L5_5 = L2_2 + 4
L6_6 = 1
L4_4 = L4_4(L5_5, L6_6)
L5_5 = string
L5_5 = L5_5.byte
L6_6 = L3_3
L7_7 = 1
L5_5 = L5_5(L6_6, L7_7)
L6_6 = string
L6_6 = L6_6.byte
L7_7 = L4_4
L8_8 = 1
L6_6 = L6_6(L7_7, L8_8)
L7_7 = 0
L8_8 = 0
if L9_9 then
  L7_7 = 7
  L8_8 = L9_9.VA
else
  L7_7 = 8
  L8_8 = L9_9.VA
end
for L12_12 = 1, #L0_0, 2 do
  L13_13 = L0_0[L12_12]
  if L5_5 == L13_13 then
    L13_13 = L12_12 + 1
    L13_13 = L0_0[L13_13]
    if L6_6 == L13_13 then
      L13_13 = string
      L13_13 = L13_13.format
      L13_13 = L13_13("obf_oa_00A_data_%02x%02x_%02x_%08x_%08x_", L6_6, L5_5, L7_7, hstrlog[3].VA, L8_8)
      mp.set_mpattribute(L13_13)
      return mp.INFECTED
    end
  end
end
return L9_9
