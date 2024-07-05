local L0_0, L1_1, L2_2
L0_0 = 144
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = pevars
L2_2 = L2_2.sigaddr
L1_1 = L1_1(L2_2, L0_0)
L2_2 = 66
while string.byte(L1_1, L2_2) == 104 do
  L2_2 = L2_2 + 5
  if L0_0 < L2_2 then
    return mp.CLEAN
  end
  if 0 + 1 >= 20 then
    return mp.CLEAN
  end
end
if mp.readu_u32(L1_1, L2_2) == 1146486612 and mp.readu_u32(L1_1, L2_2 + 4) == 3296978315 and mp.readu_u16(L1_1, L2_2 + 8) == 24912 and string.byte(L1_1, L2_2 + 10) == 233 then
  return mp.INFECTED
end
return mp.CLEAN
