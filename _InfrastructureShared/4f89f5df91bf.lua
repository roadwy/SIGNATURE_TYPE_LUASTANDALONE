local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 + 2
L0_0 = L0_0(L1_1, 4)
L1_1 = string
L1_1 = L1_1.byte
L1_1 = L1_1(L0_0, 1)
L1_1 = L1_1 + string.byte(L0_0, 2) * 256
L1_1 = L1_1 + string.byte(L0_0, 3) * 65536
L1_1 = L1_1 + string.byte(L0_0, 4) * 16777216
if pe.mmap_va(L1_1, 7) == "%x.exe\000" then
  return mp.INFECTED
end
return mp.CLEAN
