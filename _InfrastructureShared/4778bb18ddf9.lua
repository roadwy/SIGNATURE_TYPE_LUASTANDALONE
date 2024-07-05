local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = pevars
L0_0 = L0_0.epsec
if L0_0 == 2 then
  L0_0 = pesecs
  L0_0 = L0_0[2]
  L0_0 = L0_0.Name
  if L0_0 == ".rsrc" then
    L0_0 = pesecs
    L0_0 = L0_0[2]
    L0_0 = L0_0.SizeOfRawData
    if L0_0 ~= 512 then
      L0_0 = pesecs
      L0_0 = L0_0[2]
      L0_0 = L0_0.SizeOfRawData
    end
  end
elseif L0_0 ~= 1024 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = hstrlog
L0_0 = L0_0[2]
L0_0 = L0_0.VA
L0_0 = L0_0 + 15
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = L0_0
L3_3 = 6
L1_1 = L1_1(L2_2, L3_3)
L2_2 = string
L2_2 = L2_2.byte
L3_3 = pe
L3_3 = L3_3.mmap_va
L8_8 = L3_3(L4_4, L5_5)
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L3_3(L4_4, L5_5))
L3_3 = string
L3_3 = L3_3.byte
L8_8 = L4_4(L5_5, L6_6)
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L4_4(L5_5, L6_6))
L3_3 = L3_3 * 256
L2_2 = L2_2 + L3_3
L3_3 = string
L3_3 = L3_3.byte
L8_8 = L4_4(L5_5, L6_6)
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L4_4(L5_5, L6_6))
L7_7 = 1
L8_8 = L5_5(L6_6, L7_7)
L3_3 = L3_3 + L4_4
for L7_7 = 15, 105, 15 do
  L8_8 = L0_0 + L7_7
  if L1_1 ~= pe.mmap_va(L8_8, 6) or L2_2 - L7_7 ~= string.byte(pe.mmap_va(L8_8 + 6, 1)) + string.byte(pe.mmap_va(L8_8 + 7, 1)) * 256 or L3_3 - L7_7 ~= string.byte(pe.mmap_va(L8_8 + 11, 1)) + string.byte(pe.mmap_va(L8_8 + 12, 1)) * 256 then
    return mp.CLEAN
  end
end
return L4_4
