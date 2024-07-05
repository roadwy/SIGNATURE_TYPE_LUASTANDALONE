local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 + 1
L0_0 = L0_0(L1_1, 4)
L1_1 = mp
L1_1 = L1_1.readu_u32
L1_1 = L1_1(L0_0, 1)
mp.readprotection(false)
if pe.mmap_va(L1_1, 9) == "myapp.exe" then
  return mp.INFECTED
end
return mp.CLEAN
