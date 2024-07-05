local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
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
  L10_10
}
L1_1 = 82
L2_2 = 89
L3_3 = 79
L4_4 = 67
L5_5 = 85
L6_6 = 73
L10_10 = 87
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
L5_5 = L5_5(L6_6, L7_7)
L6_6 = string
L6_6 = L6_6.byte
L6_6 = L6_6(L7_7, L8_8)
for L10_10 = 1, #L0_0, 2 do
  L11_11 = L0_0[L10_10]
  if L5_5 == L11_11 then
    L11_11 = L10_10 + 1
    L11_11 = L0_0[L11_11]
    if L6_6 == L11_11 then
      L11_11 = string
      L11_11 = L11_11.format
      L11_11 = L11_11("obf_oa_marker_%x%x", L6_6, L5_5)
      mp.set_mpattribute(L11_11)
      return mp.INFECTED
    end
  end
end
return L7_7
