local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 + 23
L0_0 = L0_0(L1_1, 96)
L1_1 = string
L1_1 = L1_1.byte
L1_1 = L1_1(L0_0, 1)
L1_1 = L1_1 + 2
if L1_1 > #L0_0 then
  return mp.CLEAN
end
if string.byte(L0_0, L1_1) == 232 then
  return mp.INFECTED
end
return mp.CLEAN
