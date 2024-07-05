local L0_0, L1_1, L2_2, L3_3, L4_4
function L0_0(A0_5)
  local L1_6, L2_7, L3_8, L4_9, L5_10, L6_11
  L1_6 = 0
  for L5_10 = 4, 1, -1 do
    L6_11 = L1_6 * 256
    L1_6 = L6_11 + string.byte(A0_5, L5_10)
  end
  return L1_6
end
byte_to_dword = L0_0
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.VA
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = L0_0 - 2
L3_3 = 4
L1_1 = L1_1(L2_2, L3_3)
L2_2 = byte_to_dword
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L3_3 = pe
L3_3 = L3_3.mmap_va
L4_4 = L2_2
L3_3 = L3_3(L4_4, 2)
if "MZ" ~= L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = pe
L3_3 = L3_3.mmap_va
L4_4 = L0_0 + 12
L3_3 = L3_3(L4_4, 4)
L4_4 = byte_to_dword
L4_4 = L4_4(L3_3)
if "\000\000\255\255" ~= pe.mmap_va(L4_4, 4) then
  return mp.CLEAN
end
return mp.INFECTED
